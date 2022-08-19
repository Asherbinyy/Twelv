// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'iap_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IAPEventTearOff {
  const _$IAPEventTearOff();

  StartObserving startObserving() {
    return const StartObserving();
  }

  FetchProducts fetchProducts({required IAPType type}) {
    return FetchProducts(
      type: type,
    );
  }

  Buy buy({required String productId}) {
    return Buy(
      productId: productId,
    );
  }

  CheckConsume checkConsume() {
    return const CheckConsume();
  }

  PurchaseResponseReceived purchaseResponseReceived(
      {required InAppPurchaseResponse response}) {
    return PurchaseResponseReceived(
      response: response,
    );
  }

  PurchaseResponseErrorReceived purchaseResponseErrorReceived(
      {required InAppPurchaseError error}) {
    return PurchaseResponseErrorReceived(
      error: error,
    );
  }

  UnknowException unknowException({required dynamic error}) {
    return UnknowException(
      error: error,
    );
  }
}

/// @nodoc
const $IAPEvent = _$IAPEventTearOff();

/// @nodoc
mixin _$IAPEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startObserving,
    required TResult Function(IAPType type) fetchProducts,
    required TResult Function(String productId) buy,
    required TResult Function() checkConsume,
    required TResult Function(InAppPurchaseResponse response)
        purchaseResponseReceived,
    required TResult Function(InAppPurchaseError error)
        purchaseResponseErrorReceived,
    required TResult Function(dynamic error) unknowException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startObserving,
    TResult Function(IAPType type)? fetchProducts,
    TResult Function(String productId)? buy,
    TResult Function()? checkConsume,
    TResult Function(InAppPurchaseResponse response)? purchaseResponseReceived,
    TResult Function(InAppPurchaseError error)? purchaseResponseErrorReceived,
    TResult Function(dynamic error)? unknowException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartObserving value) startObserving,
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(Buy value) buy,
    required TResult Function(CheckConsume value) checkConsume,
    required TResult Function(PurchaseResponseReceived value)
        purchaseResponseReceived,
    required TResult Function(PurchaseResponseErrorReceived value)
        purchaseResponseErrorReceived,
    required TResult Function(UnknowException value) unknowException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartObserving value)? startObserving,
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(Buy value)? buy,
    TResult Function(CheckConsume value)? checkConsume,
    TResult Function(PurchaseResponseReceived value)? purchaseResponseReceived,
    TResult Function(PurchaseResponseErrorReceived value)?
        purchaseResponseErrorReceived,
    TResult Function(UnknowException value)? unknowException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAPEventCopyWith<$Res> {
  factory $IAPEventCopyWith(IAPEvent value, $Res Function(IAPEvent) then) =
      _$IAPEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IAPEventCopyWithImpl<$Res> implements $IAPEventCopyWith<$Res> {
  _$IAPEventCopyWithImpl(this._value, this._then);

  final IAPEvent _value;
  // ignore: unused_field
  final $Res Function(IAPEvent) _then;
}

/// @nodoc
abstract class $StartObservingCopyWith<$Res> {
  factory $StartObservingCopyWith(
          StartObserving value, $Res Function(StartObserving) then) =
      _$StartObservingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartObservingCopyWithImpl<$Res> extends _$IAPEventCopyWithImpl<$Res>
    implements $StartObservingCopyWith<$Res> {
  _$StartObservingCopyWithImpl(
      StartObserving _value, $Res Function(StartObserving) _then)
      : super(_value, (v) => _then(v as StartObserving));

  @override
  StartObserving get _value => super._value as StartObserving;
}

/// @nodoc
class _$StartObserving implements StartObserving {
  const _$StartObserving();

  @override
  String toString() {
    return 'IAPEvent.startObserving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartObserving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startObserving,
    required TResult Function(IAPType type) fetchProducts,
    required TResult Function(String productId) buy,
    required TResult Function() checkConsume,
    required TResult Function(InAppPurchaseResponse response)
        purchaseResponseReceived,
    required TResult Function(InAppPurchaseError error)
        purchaseResponseErrorReceived,
    required TResult Function(dynamic error) unknowException,
  }) {
    return startObserving();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startObserving,
    TResult Function(IAPType type)? fetchProducts,
    TResult Function(String productId)? buy,
    TResult Function()? checkConsume,
    TResult Function(InAppPurchaseResponse response)? purchaseResponseReceived,
    TResult Function(InAppPurchaseError error)? purchaseResponseErrorReceived,
    TResult Function(dynamic error)? unknowException,
    required TResult orElse(),
  }) {
    if (startObserving != null) {
      return startObserving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartObserving value) startObserving,
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(Buy value) buy,
    required TResult Function(CheckConsume value) checkConsume,
    required TResult Function(PurchaseResponseReceived value)
        purchaseResponseReceived,
    required TResult Function(PurchaseResponseErrorReceived value)
        purchaseResponseErrorReceived,
    required TResult Function(UnknowException value) unknowException,
  }) {
    return startObserving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartObserving value)? startObserving,
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(Buy value)? buy,
    TResult Function(CheckConsume value)? checkConsume,
    TResult Function(PurchaseResponseReceived value)? purchaseResponseReceived,
    TResult Function(PurchaseResponseErrorReceived value)?
        purchaseResponseErrorReceived,
    TResult Function(UnknowException value)? unknowException,
    required TResult orElse(),
  }) {
    if (startObserving != null) {
      return startObserving(this);
    }
    return orElse();
  }
}

abstract class StartObserving implements IAPEvent {
  const factory StartObserving() = _$StartObserving;
}

/// @nodoc
abstract class $FetchProductsCopyWith<$Res> {
  factory $FetchProductsCopyWith(
          FetchProducts value, $Res Function(FetchProducts) then) =
      _$FetchProductsCopyWithImpl<$Res>;
  $Res call({IAPType type});
}

/// @nodoc
class _$FetchProductsCopyWithImpl<$Res> extends _$IAPEventCopyWithImpl<$Res>
    implements $FetchProductsCopyWith<$Res> {
  _$FetchProductsCopyWithImpl(
      FetchProducts _value, $Res Function(FetchProducts) _then)
      : super(_value, (v) => _then(v as FetchProducts));

  @override
  FetchProducts get _value => super._value as FetchProducts;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(FetchProducts(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IAPType,
    ));
  }
}

/// @nodoc
class _$FetchProducts implements FetchProducts {
  const _$FetchProducts({required this.type});

  @override
  final IAPType type;

  @override
  String toString() {
    return 'IAPEvent.fetchProducts(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchProducts &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $FetchProductsCopyWith<FetchProducts> get copyWith =>
      _$FetchProductsCopyWithImpl<FetchProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startObserving,
    required TResult Function(IAPType type) fetchProducts,
    required TResult Function(String productId) buy,
    required TResult Function() checkConsume,
    required TResult Function(InAppPurchaseResponse response)
        purchaseResponseReceived,
    required TResult Function(InAppPurchaseError error)
        purchaseResponseErrorReceived,
    required TResult Function(dynamic error) unknowException,
  }) {
    return fetchProducts(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startObserving,
    TResult Function(IAPType type)? fetchProducts,
    TResult Function(String productId)? buy,
    TResult Function()? checkConsume,
    TResult Function(InAppPurchaseResponse response)? purchaseResponseReceived,
    TResult Function(InAppPurchaseError error)? purchaseResponseErrorReceived,
    TResult Function(dynamic error)? unknowException,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartObserving value) startObserving,
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(Buy value) buy,
    required TResult Function(CheckConsume value) checkConsume,
    required TResult Function(PurchaseResponseReceived value)
        purchaseResponseReceived,
    required TResult Function(PurchaseResponseErrorReceived value)
        purchaseResponseErrorReceived,
    required TResult Function(UnknowException value) unknowException,
  }) {
    return fetchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartObserving value)? startObserving,
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(Buy value)? buy,
    TResult Function(CheckConsume value)? checkConsume,
    TResult Function(PurchaseResponseReceived value)? purchaseResponseReceived,
    TResult Function(PurchaseResponseErrorReceived value)?
        purchaseResponseErrorReceived,
    TResult Function(UnknowException value)? unknowException,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(this);
    }
    return orElse();
  }
}

abstract class FetchProducts implements IAPEvent {
  const factory FetchProducts({required IAPType type}) = _$FetchProducts;

  IAPType get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchProductsCopyWith<FetchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyCopyWith<$Res> {
  factory $BuyCopyWith(Buy value, $Res Function(Buy) then) =
      _$BuyCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class _$BuyCopyWithImpl<$Res> extends _$IAPEventCopyWithImpl<$Res>
    implements $BuyCopyWith<$Res> {
  _$BuyCopyWithImpl(Buy _value, $Res Function(Buy) _then)
      : super(_value, (v) => _then(v as Buy));

  @override
  Buy get _value => super._value as Buy;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(Buy(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$Buy implements Buy {
  const _$Buy({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'IAPEvent.buy(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Buy &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @JsonKey(ignore: true)
  @override
  $BuyCopyWith<Buy> get copyWith => _$BuyCopyWithImpl<Buy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startObserving,
    required TResult Function(IAPType type) fetchProducts,
    required TResult Function(String productId) buy,
    required TResult Function() checkConsume,
    required TResult Function(InAppPurchaseResponse response)
        purchaseResponseReceived,
    required TResult Function(InAppPurchaseError error)
        purchaseResponseErrorReceived,
    required TResult Function(dynamic error) unknowException,
  }) {
    return buy(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startObserving,
    TResult Function(IAPType type)? fetchProducts,
    TResult Function(String productId)? buy,
    TResult Function()? checkConsume,
    TResult Function(InAppPurchaseResponse response)? purchaseResponseReceived,
    TResult Function(InAppPurchaseError error)? purchaseResponseErrorReceived,
    TResult Function(dynamic error)? unknowException,
    required TResult orElse(),
  }) {
    if (buy != null) {
      return buy(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartObserving value) startObserving,
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(Buy value) buy,
    required TResult Function(CheckConsume value) checkConsume,
    required TResult Function(PurchaseResponseReceived value)
        purchaseResponseReceived,
    required TResult Function(PurchaseResponseErrorReceived value)
        purchaseResponseErrorReceived,
    required TResult Function(UnknowException value) unknowException,
  }) {
    return buy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartObserving value)? startObserving,
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(Buy value)? buy,
    TResult Function(CheckConsume value)? checkConsume,
    TResult Function(PurchaseResponseReceived value)? purchaseResponseReceived,
    TResult Function(PurchaseResponseErrorReceived value)?
        purchaseResponseErrorReceived,
    TResult Function(UnknowException value)? unknowException,
    required TResult orElse(),
  }) {
    if (buy != null) {
      return buy(this);
    }
    return orElse();
  }
}

abstract class Buy implements IAPEvent {
  const factory Buy({required String productId}) = _$Buy;

  String get productId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyCopyWith<Buy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckConsumeCopyWith<$Res> {
  factory $CheckConsumeCopyWith(
          CheckConsume value, $Res Function(CheckConsume) then) =
      _$CheckConsumeCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckConsumeCopyWithImpl<$Res> extends _$IAPEventCopyWithImpl<$Res>
    implements $CheckConsumeCopyWith<$Res> {
  _$CheckConsumeCopyWithImpl(
      CheckConsume _value, $Res Function(CheckConsume) _then)
      : super(_value, (v) => _then(v as CheckConsume));

  @override
  CheckConsume get _value => super._value as CheckConsume;
}

/// @nodoc
class _$CheckConsume implements CheckConsume {
  const _$CheckConsume();

  @override
  String toString() {
    return 'IAPEvent.checkConsume()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckConsume);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startObserving,
    required TResult Function(IAPType type) fetchProducts,
    required TResult Function(String productId) buy,
    required TResult Function() checkConsume,
    required TResult Function(InAppPurchaseResponse response)
        purchaseResponseReceived,
    required TResult Function(InAppPurchaseError error)
        purchaseResponseErrorReceived,
    required TResult Function(dynamic error) unknowException,
  }) {
    return checkConsume();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startObserving,
    TResult Function(IAPType type)? fetchProducts,
    TResult Function(String productId)? buy,
    TResult Function()? checkConsume,
    TResult Function(InAppPurchaseResponse response)? purchaseResponseReceived,
    TResult Function(InAppPurchaseError error)? purchaseResponseErrorReceived,
    TResult Function(dynamic error)? unknowException,
    required TResult orElse(),
  }) {
    if (checkConsume != null) {
      return checkConsume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartObserving value) startObserving,
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(Buy value) buy,
    required TResult Function(CheckConsume value) checkConsume,
    required TResult Function(PurchaseResponseReceived value)
        purchaseResponseReceived,
    required TResult Function(PurchaseResponseErrorReceived value)
        purchaseResponseErrorReceived,
    required TResult Function(UnknowException value) unknowException,
  }) {
    return checkConsume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartObserving value)? startObserving,
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(Buy value)? buy,
    TResult Function(CheckConsume value)? checkConsume,
    TResult Function(PurchaseResponseReceived value)? purchaseResponseReceived,
    TResult Function(PurchaseResponseErrorReceived value)?
        purchaseResponseErrorReceived,
    TResult Function(UnknowException value)? unknowException,
    required TResult orElse(),
  }) {
    if (checkConsume != null) {
      return checkConsume(this);
    }
    return orElse();
  }
}

abstract class CheckConsume implements IAPEvent {
  const factory CheckConsume() = _$CheckConsume;
}

/// @nodoc
abstract class $PurchaseResponseReceivedCopyWith<$Res> {
  factory $PurchaseResponseReceivedCopyWith(PurchaseResponseReceived value,
          $Res Function(PurchaseResponseReceived) then) =
      _$PurchaseResponseReceivedCopyWithImpl<$Res>;
  $Res call({InAppPurchaseResponse response});
}

/// @nodoc
class _$PurchaseResponseReceivedCopyWithImpl<$Res>
    extends _$IAPEventCopyWithImpl<$Res>
    implements $PurchaseResponseReceivedCopyWith<$Res> {
  _$PurchaseResponseReceivedCopyWithImpl(PurchaseResponseReceived _value,
      $Res Function(PurchaseResponseReceived) _then)
      : super(_value, (v) => _then(v as PurchaseResponseReceived));

  @override
  PurchaseResponseReceived get _value =>
      super._value as PurchaseResponseReceived;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(PurchaseResponseReceived(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as InAppPurchaseResponse,
    ));
  }
}

/// @nodoc
class _$PurchaseResponseReceived implements PurchaseResponseReceived {
  const _$PurchaseResponseReceived({required this.response});

  @override
  final InAppPurchaseResponse response;

  @override
  String toString() {
    return 'IAPEvent.purchaseResponseReceived(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseResponseReceived &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $PurchaseResponseReceivedCopyWith<PurchaseResponseReceived> get copyWith =>
      _$PurchaseResponseReceivedCopyWithImpl<PurchaseResponseReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startObserving,
    required TResult Function(IAPType type) fetchProducts,
    required TResult Function(String productId) buy,
    required TResult Function() checkConsume,
    required TResult Function(InAppPurchaseResponse response)
        purchaseResponseReceived,
    required TResult Function(InAppPurchaseError error)
        purchaseResponseErrorReceived,
    required TResult Function(dynamic error) unknowException,
  }) {
    return purchaseResponseReceived(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startObserving,
    TResult Function(IAPType type)? fetchProducts,
    TResult Function(String productId)? buy,
    TResult Function()? checkConsume,
    TResult Function(InAppPurchaseResponse response)? purchaseResponseReceived,
    TResult Function(InAppPurchaseError error)? purchaseResponseErrorReceived,
    TResult Function(dynamic error)? unknowException,
    required TResult orElse(),
  }) {
    if (purchaseResponseReceived != null) {
      return purchaseResponseReceived(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartObserving value) startObserving,
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(Buy value) buy,
    required TResult Function(CheckConsume value) checkConsume,
    required TResult Function(PurchaseResponseReceived value)
        purchaseResponseReceived,
    required TResult Function(PurchaseResponseErrorReceived value)
        purchaseResponseErrorReceived,
    required TResult Function(UnknowException value) unknowException,
  }) {
    return purchaseResponseReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartObserving value)? startObserving,
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(Buy value)? buy,
    TResult Function(CheckConsume value)? checkConsume,
    TResult Function(PurchaseResponseReceived value)? purchaseResponseReceived,
    TResult Function(PurchaseResponseErrorReceived value)?
        purchaseResponseErrorReceived,
    TResult Function(UnknowException value)? unknowException,
    required TResult orElse(),
  }) {
    if (purchaseResponseReceived != null) {
      return purchaseResponseReceived(this);
    }
    return orElse();
  }
}

abstract class PurchaseResponseReceived implements IAPEvent {
  const factory PurchaseResponseReceived(
      {required InAppPurchaseResponse response}) = _$PurchaseResponseReceived;

  InAppPurchaseResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseResponseReceivedCopyWith<PurchaseResponseReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseResponseErrorReceivedCopyWith<$Res> {
  factory $PurchaseResponseErrorReceivedCopyWith(
          PurchaseResponseErrorReceived value,
          $Res Function(PurchaseResponseErrorReceived) then) =
      _$PurchaseResponseErrorReceivedCopyWithImpl<$Res>;
  $Res call({InAppPurchaseError error});
}

/// @nodoc
class _$PurchaseResponseErrorReceivedCopyWithImpl<$Res>
    extends _$IAPEventCopyWithImpl<$Res>
    implements $PurchaseResponseErrorReceivedCopyWith<$Res> {
  _$PurchaseResponseErrorReceivedCopyWithImpl(
      PurchaseResponseErrorReceived _value,
      $Res Function(PurchaseResponseErrorReceived) _then)
      : super(_value, (v) => _then(v as PurchaseResponseErrorReceived));

  @override
  PurchaseResponseErrorReceived get _value =>
      super._value as PurchaseResponseErrorReceived;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(PurchaseResponseErrorReceived(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as InAppPurchaseError,
    ));
  }
}

/// @nodoc
class _$PurchaseResponseErrorReceived implements PurchaseResponseErrorReceived {
  const _$PurchaseResponseErrorReceived({required this.error});

  @override
  final InAppPurchaseError error;

  @override
  String toString() {
    return 'IAPEvent.purchaseResponseErrorReceived(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseResponseErrorReceived &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $PurchaseResponseErrorReceivedCopyWith<PurchaseResponseErrorReceived>
      get copyWith => _$PurchaseResponseErrorReceivedCopyWithImpl<
          PurchaseResponseErrorReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startObserving,
    required TResult Function(IAPType type) fetchProducts,
    required TResult Function(String productId) buy,
    required TResult Function() checkConsume,
    required TResult Function(InAppPurchaseResponse response)
        purchaseResponseReceived,
    required TResult Function(InAppPurchaseError error)
        purchaseResponseErrorReceived,
    required TResult Function(dynamic error) unknowException,
  }) {
    return purchaseResponseErrorReceived(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startObserving,
    TResult Function(IAPType type)? fetchProducts,
    TResult Function(String productId)? buy,
    TResult Function()? checkConsume,
    TResult Function(InAppPurchaseResponse response)? purchaseResponseReceived,
    TResult Function(InAppPurchaseError error)? purchaseResponseErrorReceived,
    TResult Function(dynamic error)? unknowException,
    required TResult orElse(),
  }) {
    if (purchaseResponseErrorReceived != null) {
      return purchaseResponseErrorReceived(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartObserving value) startObserving,
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(Buy value) buy,
    required TResult Function(CheckConsume value) checkConsume,
    required TResult Function(PurchaseResponseReceived value)
        purchaseResponseReceived,
    required TResult Function(PurchaseResponseErrorReceived value)
        purchaseResponseErrorReceived,
    required TResult Function(UnknowException value) unknowException,
  }) {
    return purchaseResponseErrorReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartObserving value)? startObserving,
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(Buy value)? buy,
    TResult Function(CheckConsume value)? checkConsume,
    TResult Function(PurchaseResponseReceived value)? purchaseResponseReceived,
    TResult Function(PurchaseResponseErrorReceived value)?
        purchaseResponseErrorReceived,
    TResult Function(UnknowException value)? unknowException,
    required TResult orElse(),
  }) {
    if (purchaseResponseErrorReceived != null) {
      return purchaseResponseErrorReceived(this);
    }
    return orElse();
  }
}

abstract class PurchaseResponseErrorReceived implements IAPEvent {
  const factory PurchaseResponseErrorReceived(
      {required InAppPurchaseError error}) = _$PurchaseResponseErrorReceived;

  InAppPurchaseError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseResponseErrorReceivedCopyWith<PurchaseResponseErrorReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknowExceptionCopyWith<$Res> {
  factory $UnknowExceptionCopyWith(
          UnknowException value, $Res Function(UnknowException) then) =
      _$UnknowExceptionCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$UnknowExceptionCopyWithImpl<$Res> extends _$IAPEventCopyWithImpl<$Res>
    implements $UnknowExceptionCopyWith<$Res> {
  _$UnknowExceptionCopyWithImpl(
      UnknowException _value, $Res Function(UnknowException) _then)
      : super(_value, (v) => _then(v as UnknowException));

  @override
  UnknowException get _value => super._value as UnknowException;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UnknowException(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
class _$UnknowException implements UnknowException {
  const _$UnknowException({required this.error});

  @override
  final dynamic error;

  @override
  String toString() {
    return 'IAPEvent.unknowException(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnknowException &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $UnknowExceptionCopyWith<UnknowException> get copyWith =>
      _$UnknowExceptionCopyWithImpl<UnknowException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startObserving,
    required TResult Function(IAPType type) fetchProducts,
    required TResult Function(String productId) buy,
    required TResult Function() checkConsume,
    required TResult Function(InAppPurchaseResponse response)
        purchaseResponseReceived,
    required TResult Function(InAppPurchaseError error)
        purchaseResponseErrorReceived,
    required TResult Function(dynamic error) unknowException,
  }) {
    return unknowException(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startObserving,
    TResult Function(IAPType type)? fetchProducts,
    TResult Function(String productId)? buy,
    TResult Function()? checkConsume,
    TResult Function(InAppPurchaseResponse response)? purchaseResponseReceived,
    TResult Function(InAppPurchaseError error)? purchaseResponseErrorReceived,
    TResult Function(dynamic error)? unknowException,
    required TResult orElse(),
  }) {
    if (unknowException != null) {
      return unknowException(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartObserving value) startObserving,
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(Buy value) buy,
    required TResult Function(CheckConsume value) checkConsume,
    required TResult Function(PurchaseResponseReceived value)
        purchaseResponseReceived,
    required TResult Function(PurchaseResponseErrorReceived value)
        purchaseResponseErrorReceived,
    required TResult Function(UnknowException value) unknowException,
  }) {
    return unknowException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartObserving value)? startObserving,
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(Buy value)? buy,
    TResult Function(CheckConsume value)? checkConsume,
    TResult Function(PurchaseResponseReceived value)? purchaseResponseReceived,
    TResult Function(PurchaseResponseErrorReceived value)?
        purchaseResponseErrorReceived,
    TResult Function(UnknowException value)? unknowException,
    required TResult orElse(),
  }) {
    if (unknowException != null) {
      return unknowException(this);
    }
    return orElse();
  }
}

abstract class UnknowException implements IAPEvent {
  const factory UnknowException({required dynamic error}) = _$UnknowException;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnknowExceptionCopyWith<UnknowException> get copyWith =>
      throw _privateConstructorUsedError;
}
