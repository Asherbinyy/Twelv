import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter_inapp_purchase/flutter_inapp_purchase.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/services/analytics/short_analytics_tracker.dart';
import 'package:twelv/services/iap/in_app_purchase_service.dart';
import 'package:twelv/services/iap/model/in_app_purchase_error.dart';
import 'package:twelv/services/iap/model/in_app_purchase_item.dart';
import 'package:twelv/services/iap/model/in_app_purchase_response.dart';

class FlutterInAppPurchaseService implements InAppPurchaseService {
  // region Properties
  static const String _iOSConnectedStatus = "true";

  final Environment _environment;
  final List<String> _connectionSuccessStatus = <String>[
    _iOSConnectedStatus,
    "Billing client ready",
    "Already started."
  ];

  StreamController<InAppPurchaseResponse?> _streamController =
      StreamController<InAppPurchaseResponse?>();

  StreamSubscription<ConnectionResult>? _connectionSubscription;
  StreamSubscription<PurchasedItem?>? _purchaseUpdatedSubscription;
  StreamSubscription<PurchaseResult?>? _purchaseErrorSubscription;

  PurchasedItem? _purchasedItem;
  List<IAPItem> _storeProducts = <IAPItem>[];
  List<IAPItem> _storeSubscriptions = <IAPItem>[];

  FlutterInAppPurchaseService(this._environment);

  // endregion

  bool _validateStoreConnection(String? status) {
    if (status == null) {
      return false;
    }
    if (Platform.isIOS) {
      return status == _iOSConnectedStatus;
    }
    for (final String correctStatus in _connectionSuccessStatus) {
      if (status.contains(correctStatus)) {
        return true;
      }
    }
    return false;
  }

  // region Connection

  Future<void> _initConnection() async {
    final String? connection = await FlutterInappPurchase.instance.initialize();
    if (!_validateStoreConnection(connection)) {
      _streamController.addError(InAppPurchaseError(
          responseCode: InAppPurchaseErrorCode.connection,
          message: "Init connection returned with: $connection"));
      return;
    }
    _listenForConnectionUpdates();
    _listenForPurchaseUpdates();
    _listenForPurchaseErrors();
  }

  void _listenForConnectionUpdates() => _connectionSubscription =
          FlutterInappPurchase.connectionUpdated.listen((ConnectionResult connection) {
        if (connection.connected == false) {
          _streamController
              .addError(InAppPurchaseError(responseCode: InAppPurchaseErrorCode.connection));
        }
      });

  void _listenForPurchaseUpdates() => _purchaseUpdatedSubscription =
          FlutterInappPurchase.purchaseUpdated.listen((PurchasedItem? purchasedItem) {
        if (purchasedItem != null) {
          _purchasedItem = purchasedItem;
          if (Platform.isAndroid) {
            _handlePurchaseUpdateAndroid(purchasedItem);
          } else {
            _handlePurchaseUpdateIOS(purchasedItem);
          }
        } else {
          _publishTransactionFailedError();
        }
      });

  void _listenForPurchaseErrors() => _purchaseErrorSubscription =
          FlutterInappPurchase.purchaseError.listen((PurchaseResult? event) {
        logger().e("FlutterInAppPurchaseService", event);
        _streamController.addError(InAppPurchaseError(
          responseCode: event?.responseCode,
          code: event?.code,
          message: event?.message,
        ));
      });

  void _closeConnection() {
    if (_connectionSubscription != null) {
      _connectionSubscription?.cancel();
    }
    if (_purchaseErrorSubscription != null) {
      _purchaseErrorSubscription?.cancel();
    }
    if (_purchaseUpdatedSubscription != null) {
      _purchaseUpdatedSubscription?.cancel();
    }
    FlutterInappPurchase.instance.finalize();
  }

  // endregion

  // region Lifecycle

  void _start() {
    _streamController.done;
    _streamController = StreamController<InAppPurchaseResponse?>();
  }

  void _close() {
    _closeConnection();
    _streamController.done;
    _streamController.close();
  }

// endregion

// region Items

  Future<List<InAppPurchaseItem>> _loadProducts(Set<String> productIds) async {
    final List<IAPItem> products =
        await FlutterInappPurchase.instance.getProducts(productIds.toList());
    _storeProducts = products;
    return List<InAppPurchaseItem>.from(products
        .where((IAPItem product) => product.productId?.isNotEmpty == true)
        .map((IAPItem product) => InAppPurchaseProduct(iapItem: product)));
  }

  Future<List<InAppPurchaseItem>> _loadSubscriptions(Set<String> productIds) async {
    final List<IAPItem> products =
        await FlutterInappPurchase.instance.getSubscriptions(productIds.toList());
    _storeSubscriptions = products;
    return List<InAppPurchaseItem>.from(products
        .where((IAPItem product) => product.productId?.isNotEmpty == true)
        .map((IAPItem product) => InAppPurchaseSubscription(iapItem: product)));
  }

// endregion

// region Purchase

  Future<List<PurchasedItem>> _getPurchasedWaiting() async =>
      await FlutterInappPurchase.instance.getAvailablePurchases() ?? <PurchasedItem>[];

  Future<int> _checkConsume() async {
    final List<PurchasedItem> purchasedItems = await getPurchasedWaiting();
    if (purchasedItems.isNotEmpty) {
      for (final PurchasedItem item in purchasedItems) {
        logger().d("IAP Restoring payment for ${item.productId}");
        await _finishTransaction(
            item: item,
            isConsumable: _environment.inAppPurchaseCreditProductIds.contains(item.productId));
      }
      return purchasedItems.length;
    }
    return 0;
  }

  Future<void> _purchase(InAppPurchaseItem item) async {
    try {
      if (item is InAppPurchaseSubscription) {
        await FlutterInappPurchase.instance.requestSubscription(item.productId);
      } else {
        await FlutterInappPurchase.instance.requestPurchase(item.productId);
      }
    } catch (error) {
      logger().e(error);
      _streamController.addError(error);
    }
  }

  Future<void> _handlePurchaseUpdateIOS(PurchasedItem purchasedItem) async {
    switch (purchasedItem.transactionStateIOS) {
      case TransactionState.failed:
        _publishTransactionFailedError();
        await _finishTransaction();
        break;
      case TransactionState.purchased:
      case TransactionState.restored:
        if (purchasedItem.transactionStateIOS == TransactionState.purchased) {
          _trackBoughtProduct(purchasedItem);
        }

        _streamController.add(InAppPurchaseResponse(
          productId: purchasedItem.productId,
          receipt: purchasedItem.transactionReceipt,
        ));
        break;
      case TransactionState.purchasing:
        break;
      default:
    }
  }

  Future<void> _handlePurchaseUpdateAndroid(PurchasedItem purchasedItem) async {
    switch (purchasedItem.purchaseStateAndroid) {
      case PurchaseState.purchased:
        if (purchasedItem.isAcknowledgedAndroid == false) {
          _trackBoughtProduct(purchasedItem);

          _streamController.add(InAppPurchaseResponse(
            productId: purchasedItem.productId,
            receipt: purchasedItem.transactionReceipt,
          ));
        } else {
          await _finishTransaction();
        }
        break;
      default:
        logger().d(purchasedItem.purchaseStateAndroid);
        break;
    }
  }

  Future<String?> _finishTransaction({PurchasedItem? item, bool isConsumable = false}) async {
    String? result;
    if (item != null) {
      result =
          await FlutterInappPurchase.instance.finishTransaction(item, isConsumable: isConsumable);
    } else if (_purchasedItem != null) {
      result = await FlutterInappPurchase.instance
          .finishTransaction(_purchasedItem!, isConsumable: isConsumable);
      _purchasedItem = null;
    }
    return result;
  }

  // endregion

  // region Errors

  void _publishTransactionFailedError() {
    _streamController
        .addError(InAppPurchaseError(responseCode: InAppPurchaseErrorCode.transactionFailed));
  }

  // endregion

  // region Tracking

  IAPItem? _findLoadedStoreItem(String productId) =>
      _storeProducts.firstWhereOrNull((IAPItem element) => element.productId == productId) ??
      _storeSubscriptions.firstWhereOrNull((IAPItem element) => element.productId == productId);

  void _trackBoughtProduct(PurchasedItem purchasedItem) {
    final String? productId = purchasedItem.productId;

    if (productId == null) {
      return;
    }
    if (_findLoadedStoreItem(productId) != null) {
      final bool isProduct = DependenciesContainer()
          .get<Environment>()
          .inAppPurchaseCreditProductIds
          .contains(productId);

      final IAPItem item = _findLoadedStoreItem(productId)!;
      final ShortAnalyticsTracker tracker = DependenciesContainer().get<ShortAnalyticsTracker>();

      if (item.price == null || item.currency == null) {
        logger().e("Failed to get price or currency");
        return;
      }

      final String price = item.price!;
      final String currency = item.currency!;

      if (isProduct) {
        tracker.trackPurchaseProduct(currency: currency, amount: price);
      } else {
        if (Platform.isIOS &&
            purchasedItem.transactionId != null &&
            purchasedItem.transactionReceipt != null) {
          tracker.trackPurchaseSubscriptionAppStore(
              price: price,
              currency: currency,
              transactionId: purchasedItem.transactionId!,
              receipt: purchasedItem.transactionReceipt!,
              salesRegion: Platform.localeName,
              transactionDate: purchasedItem.transactionDate ?? DateTime.now());
        } else if (Platform.isAndroid &&
            purchasedItem.productId != null &&
            purchasedItem.signatureAndroid != null &&
            purchasedItem.purchaseToken != null) {
          tracker.trackPurchaseSubscriptionPlayStore(
              price: price,
              currency: currency,
              sku: productId,
              orderId: purchasedItem.productId!,
              signature: purchasedItem.signatureAndroid!,
              purchaseToken: purchasedItem.purchaseToken!,
              transactionDate: purchasedItem.transactionDate ?? DateTime.now());
        } else {
          logger().e("Failed to log bought subscription", purchasedItem);
        }
      }
    } else {
      logger().e("Failed to find bought product");
    }
  }

  // endregion

// region InAppPurchaseService

  @override
  Stream<InAppPurchaseResponse?> get transactionUpdateStream =>
      _streamController.stream.asBroadcastStream();

  @override
  Future<void> connect() => _initConnection();

  @override
  Future<void> disconnect() async => _closeConnection();

  @override
  Future<List<InAppPurchaseItem>> loadProducts(Set<String> productIds) => _loadProducts(productIds);

  @override
  Future<List<InAppPurchaseItem>> loadSubscriptions(Set<String> productIds) =>
      _loadSubscriptions(productIds);

  @override
  Future<void> startPurchaseTransaction(InAppPurchaseItem item) => _purchase(item);

  @override
  Future<String?> finishTransaction({PurchasedItem? item, required bool isConsumable}) =>
      _finishTransaction(item: item, isConsumable: isConsumable);

  @override
  Future<int> checkConsume() => _checkConsume();

  @override
  Future<List<PurchasedItem>> getPurchasedWaiting() => _getPurchasedWaiting();

  @override
  void close() => _close();

  @override
  void start() => _start();

// endregion

}
