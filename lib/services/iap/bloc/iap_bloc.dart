import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_event.dart';
import 'package:twelv/services/iap/bloc/iap_event.dart';
import 'package:twelv/services/iap/bloc/iap_model.dart';
import 'package:twelv/services/iap/bloc/iap_state.dart';
import 'package:twelv/services/iap/model/in_app_purchase_error.dart';
import 'package:twelv/services/iap/model/in_app_purchase_response.dart';

class IAPBloc extends Bloc<IAPEvent, IAPState> {
  final IAPModel _model;

  StreamSubscription<InAppPurchaseResponse?>? _purchaseResponse;

  ProfileBloc? profileBloc;

  IAPBloc(this._model) : super(const IAPState.initial());

  @override
  Stream<IAPState> mapEventToState(IAPEvent event) async* {
    try {
      if (event is StartObserving) {
        _startObservingPayment();
      } else if (event is FetchProducts) {
        yield const IAPState.loading();
        yield IAPState.products(products: await _model.getProducts(event.type));
      } else if (event is Buy) {
        yield const IAPState.loading();
        _model.buyProduct(event.productId).onError((dynamic error, _) => _didThrowError(error));
      } else if (event is PurchaseResponseReceived) {
        yield const IAPState.loading();
        yield IAPState.purchaseFinished(
            response: event.response, backendResponse: await _model.finishPurchase(event.response));
        profileBloc?.add(const ProfileEvent.reloadUser());
      } else if (event is PurchaseResponseErrorReceived) {
        logger().e(event.error.toString());
        if (state is PurchaseError) {
          return;
        }
        yield IAPState.purchaseError(error: event.error);
      } else if (event is UnknowException) {
        yield IAPState.error(error: event.error);
      } else if (event is CheckConsume) {
        yield const IAPState.loading();
        final int _consumed = await _model.checkAndConsume();
        yield IAPState.purchaseRestored(count: _consumed);
        profileBloc?.add(const ProfileEvent.reloadUser());
      }
    } on Exception catch (e) {
      _didThrowError(e);
    }
  }

  void _didThrowError(dynamic error) {
    logger().e(error);
    if (error is InAppPurchaseError) {
      add(IAPEvent.purchaseResponseErrorReceived(error: error));
    } else {
      add(IAPEvent.unknowException(error: error));
    }
  }

  void _startObservingPayment() {
    _model.start();
    _purchaseResponse = _model.inAppPurchaseService.transactionUpdateStream
        .distinct((InAppPurchaseResponse? first, InAppPurchaseResponse? second) =>
            first?.receipt == second?.receipt)
        .listen((InAppPurchaseResponse? response) {
      if (response != null) {
        add(IAPEvent.purchaseResponseReceived(response: response));
      } else {
        add(IAPEvent.purchaseResponseErrorReceived(
            error: InAppPurchaseError(
                responseCode: InAppPurchaseErrorCode.transactionFailed,
                message: "_purchaseResponse.listen: InAppPurchaseResponse is null")));
      }
    })
          ..onError((dynamic error) {
            if (error is InAppPurchaseError) {
              logger().e(error.toString());
              add(IAPEvent.purchaseResponseErrorReceived(error: error));
            } else {
              logger().e("Received error: $error message: ${error.message}");
              add(IAPEvent.unknowException(error: error));
            }
          });
  }

  @override
  Future<void> close() {
    _purchaseResponse?.cancel();
    _model.close();
    return super.close();
  }
}
