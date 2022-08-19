// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'iap_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IAPStateTearOff {
  const _$IAPStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Products products({required List<InAppPurchaseItem> products}) {
    return Products(
      products: products,
    );
  }

  Finished finished({required bool success, required String productId}) {
    return Finished(
      success: success,
      productId: productId,
    );
  }

  Loading loading() {
    return const Loading();
  }

  Error error({required dynamic error}) {
    return Error(
      error: error,
    );
  }

  PurchaseRestored purchaseRestored({required int count}) {
    return PurchaseRestored(
      count: count,
    );
  }

  PurchaseFinished purchaseFinished(
      {required InAppPurchaseResponse? response,
      required dynamic backendResponse}) {
    return PurchaseFinished(
      response: response,
      backendResponse: backendResponse,
    );
  }

  PurchaseError purchaseError({required InAppPurchaseError error}) {
    return PurchaseError(
      error: error,
    );
  }
}

/// @nodoc
const $IAPState = _$IAPStateTearOff();

/// @nodoc
mixin _$IAPState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InAppPurchaseItem> products) products,
    required TResult Function(bool success, String productId) finished,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
    required TResult Function(int count) purchaseRestored,
    required TResult Function(
            InAppPurchaseResponse? response, dynamic backendResponse)
        purchaseFinished,
    required TResult Function(InAppPurchaseError error) purchaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InAppPurchaseItem> products)? products,
    TResult Function(bool success, String productId)? finished,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    TResult Function(int count)? purchaseRestored,
    TResult Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult Function(InAppPurchaseError error)? purchaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Products value) products,
    required TResult Function(Finished value) finished,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(PurchaseRestored value) purchaseRestored,
    required TResult Function(PurchaseFinished value) purchaseFinished,
    required TResult Function(PurchaseError value) purchaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Products value)? products,
    TResult Function(Finished value)? finished,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(PurchaseRestored value)? purchaseRestored,
    TResult Function(PurchaseFinished value)? purchaseFinished,
    TResult Function(PurchaseError value)? purchaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAPStateCopyWith<$Res> {
  factory $IAPStateCopyWith(IAPState value, $Res Function(IAPState) then) =
      _$IAPStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IAPStateCopyWithImpl<$Res> implements $IAPStateCopyWith<$Res> {
  _$IAPStateCopyWithImpl(this._value, this._then);

  final IAPState _value;
  // ignore: unused_field
  final $Res Function(IAPState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$IAPStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'IAPState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InAppPurchaseItem> products) products,
    required TResult Function(bool success, String productId) finished,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
    required TResult Function(int count) purchaseRestored,
    required TResult Function(
            InAppPurchaseResponse? response, dynamic backendResponse)
        purchaseFinished,
    required TResult Function(InAppPurchaseError error) purchaseError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InAppPurchaseItem> products)? products,
    TResult Function(bool success, String productId)? finished,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    TResult Function(int count)? purchaseRestored,
    TResult Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult Function(InAppPurchaseError error)? purchaseError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Products value) products,
    required TResult Function(Finished value) finished,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(PurchaseRestored value) purchaseRestored,
    required TResult Function(PurchaseFinished value) purchaseFinished,
    required TResult Function(PurchaseError value) purchaseError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Products value)? products,
    TResult Function(Finished value)? finished,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(PurchaseRestored value)? purchaseRestored,
    TResult Function(PurchaseFinished value)? purchaseFinished,
    TResult Function(PurchaseError value)? purchaseError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements IAPState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res>;
  $Res call({List<InAppPurchaseItem> products});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res> extends _$IAPStateCopyWithImpl<$Res>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(Products _value, $Res Function(Products) _then)
      : super(_value, (v) => _then(v as Products));

  @override
  Products get _value => super._value as Products;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(Products(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<InAppPurchaseItem>,
    ));
  }
}

/// @nodoc
class _$Products implements Products {
  const _$Products({required this.products});

  @override
  final List<InAppPurchaseItem> products;

  @override
  String toString() {
    return 'IAPState.products(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Products &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  $ProductsCopyWith<Products> get copyWith =>
      _$ProductsCopyWithImpl<Products>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InAppPurchaseItem> products) products,
    required TResult Function(bool success, String productId) finished,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
    required TResult Function(int count) purchaseRestored,
    required TResult Function(
            InAppPurchaseResponse? response, dynamic backendResponse)
        purchaseFinished,
    required TResult Function(InAppPurchaseError error) purchaseError,
  }) {
    return products(this.products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InAppPurchaseItem> products)? products,
    TResult Function(bool success, String productId)? finished,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    TResult Function(int count)? purchaseRestored,
    TResult Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult Function(InAppPurchaseError error)? purchaseError,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this.products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Products value) products,
    required TResult Function(Finished value) finished,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(PurchaseRestored value) purchaseRestored,
    required TResult Function(PurchaseFinished value) purchaseFinished,
    required TResult Function(PurchaseError value) purchaseError,
  }) {
    return products(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Products value)? products,
    TResult Function(Finished value)? finished,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(PurchaseRestored value)? purchaseRestored,
    TResult Function(PurchaseFinished value)? purchaseFinished,
    TResult Function(PurchaseError value)? purchaseError,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this);
    }
    return orElse();
  }
}

abstract class Products implements IAPState {
  const factory Products({required List<InAppPurchaseItem> products}) =
      _$Products;

  List<InAppPurchaseItem> get products => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedCopyWith<$Res> {
  factory $FinishedCopyWith(Finished value, $Res Function(Finished) then) =
      _$FinishedCopyWithImpl<$Res>;
  $Res call({bool success, String productId});
}

/// @nodoc
class _$FinishedCopyWithImpl<$Res> extends _$IAPStateCopyWithImpl<$Res>
    implements $FinishedCopyWith<$Res> {
  _$FinishedCopyWithImpl(Finished _value, $Res Function(Finished) _then)
      : super(_value, (v) => _then(v as Finished));

  @override
  Finished get _value => super._value as Finished;

  @override
  $Res call({
    Object? success = freezed,
    Object? productId = freezed,
  }) {
    return _then(Finished(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$Finished implements Finished {
  const _$Finished({required this.success, required this.productId});

  @override
  final bool success;
  @override
  final String productId;

  @override
  String toString() {
    return 'IAPState.finished(success: $success, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Finished &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(productId);

  @JsonKey(ignore: true)
  @override
  $FinishedCopyWith<Finished> get copyWith =>
      _$FinishedCopyWithImpl<Finished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InAppPurchaseItem> products) products,
    required TResult Function(bool success, String productId) finished,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
    required TResult Function(int count) purchaseRestored,
    required TResult Function(
            InAppPurchaseResponse? response, dynamic backendResponse)
        purchaseFinished,
    required TResult Function(InAppPurchaseError error) purchaseError,
  }) {
    return finished(success, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InAppPurchaseItem> products)? products,
    TResult Function(bool success, String productId)? finished,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    TResult Function(int count)? purchaseRestored,
    TResult Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult Function(InAppPurchaseError error)? purchaseError,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(success, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Products value) products,
    required TResult Function(Finished value) finished,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(PurchaseRestored value) purchaseRestored,
    required TResult Function(PurchaseFinished value) purchaseFinished,
    required TResult Function(PurchaseError value) purchaseError,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Products value)? products,
    TResult Function(Finished value)? finished,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(PurchaseRestored value)? purchaseRestored,
    TResult Function(PurchaseFinished value)? purchaseFinished,
    TResult Function(PurchaseError value)? purchaseError,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class Finished implements IAPState {
  const factory Finished({required bool success, required String productId}) =
      _$Finished;

  bool get success => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinishedCopyWith<Finished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$IAPStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'IAPState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InAppPurchaseItem> products) products,
    required TResult Function(bool success, String productId) finished,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
    required TResult Function(int count) purchaseRestored,
    required TResult Function(
            InAppPurchaseResponse? response, dynamic backendResponse)
        purchaseFinished,
    required TResult Function(InAppPurchaseError error) purchaseError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InAppPurchaseItem> products)? products,
    TResult Function(bool success, String productId)? finished,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    TResult Function(int count)? purchaseRestored,
    TResult Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult Function(InAppPurchaseError error)? purchaseError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Products value) products,
    required TResult Function(Finished value) finished,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(PurchaseRestored value) purchaseRestored,
    required TResult Function(PurchaseFinished value) purchaseFinished,
    required TResult Function(PurchaseError value) purchaseError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Products value)? products,
    TResult Function(Finished value)? finished,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(PurchaseRestored value)? purchaseRestored,
    TResult Function(PurchaseFinished value)? purchaseFinished,
    TResult Function(PurchaseError value)? purchaseError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements IAPState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$IAPStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error({required this.error});

  @override
  final dynamic error;

  @override
  String toString() {
    return 'IAPState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InAppPurchaseItem> products) products,
    required TResult Function(bool success, String productId) finished,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
    required TResult Function(int count) purchaseRestored,
    required TResult Function(
            InAppPurchaseResponse? response, dynamic backendResponse)
        purchaseFinished,
    required TResult Function(InAppPurchaseError error) purchaseError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InAppPurchaseItem> products)? products,
    TResult Function(bool success, String productId)? finished,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    TResult Function(int count)? purchaseRestored,
    TResult Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult Function(InAppPurchaseError error)? purchaseError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Products value) products,
    required TResult Function(Finished value) finished,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(PurchaseRestored value) purchaseRestored,
    required TResult Function(PurchaseFinished value) purchaseFinished,
    required TResult Function(PurchaseError value) purchaseError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Products value)? products,
    TResult Function(Finished value)? finished,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(PurchaseRestored value)? purchaseRestored,
    TResult Function(PurchaseFinished value)? purchaseFinished,
    TResult Function(PurchaseError value)? purchaseError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements IAPState {
  const factory Error({required dynamic error}) = _$Error;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseRestoredCopyWith<$Res> {
  factory $PurchaseRestoredCopyWith(
          PurchaseRestored value, $Res Function(PurchaseRestored) then) =
      _$PurchaseRestoredCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$PurchaseRestoredCopyWithImpl<$Res> extends _$IAPStateCopyWithImpl<$Res>
    implements $PurchaseRestoredCopyWith<$Res> {
  _$PurchaseRestoredCopyWithImpl(
      PurchaseRestored _value, $Res Function(PurchaseRestored) _then)
      : super(_value, (v) => _then(v as PurchaseRestored));

  @override
  PurchaseRestored get _value => super._value as PurchaseRestored;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(PurchaseRestored(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$PurchaseRestored implements PurchaseRestored {
  const _$PurchaseRestored({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'IAPState.purchaseRestored(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseRestored &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  $PurchaseRestoredCopyWith<PurchaseRestored> get copyWith =>
      _$PurchaseRestoredCopyWithImpl<PurchaseRestored>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InAppPurchaseItem> products) products,
    required TResult Function(bool success, String productId) finished,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
    required TResult Function(int count) purchaseRestored,
    required TResult Function(
            InAppPurchaseResponse? response, dynamic backendResponse)
        purchaseFinished,
    required TResult Function(InAppPurchaseError error) purchaseError,
  }) {
    return purchaseRestored(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InAppPurchaseItem> products)? products,
    TResult Function(bool success, String productId)? finished,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    TResult Function(int count)? purchaseRestored,
    TResult Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult Function(InAppPurchaseError error)? purchaseError,
    required TResult orElse(),
  }) {
    if (purchaseRestored != null) {
      return purchaseRestored(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Products value) products,
    required TResult Function(Finished value) finished,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(PurchaseRestored value) purchaseRestored,
    required TResult Function(PurchaseFinished value) purchaseFinished,
    required TResult Function(PurchaseError value) purchaseError,
  }) {
    return purchaseRestored(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Products value)? products,
    TResult Function(Finished value)? finished,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(PurchaseRestored value)? purchaseRestored,
    TResult Function(PurchaseFinished value)? purchaseFinished,
    TResult Function(PurchaseError value)? purchaseError,
    required TResult orElse(),
  }) {
    if (purchaseRestored != null) {
      return purchaseRestored(this);
    }
    return orElse();
  }
}

abstract class PurchaseRestored implements IAPState {
  const factory PurchaseRestored({required int count}) = _$PurchaseRestored;

  int get count => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseRestoredCopyWith<PurchaseRestored> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseFinishedCopyWith<$Res> {
  factory $PurchaseFinishedCopyWith(
          PurchaseFinished value, $Res Function(PurchaseFinished) then) =
      _$PurchaseFinishedCopyWithImpl<$Res>;
  $Res call({InAppPurchaseResponse? response, dynamic backendResponse});
}

/// @nodoc
class _$PurchaseFinishedCopyWithImpl<$Res> extends _$IAPStateCopyWithImpl<$Res>
    implements $PurchaseFinishedCopyWith<$Res> {
  _$PurchaseFinishedCopyWithImpl(
      PurchaseFinished _value, $Res Function(PurchaseFinished) _then)
      : super(_value, (v) => _then(v as PurchaseFinished));

  @override
  PurchaseFinished get _value => super._value as PurchaseFinished;

  @override
  $Res call({
    Object? response = freezed,
    Object? backendResponse = freezed,
  }) {
    return _then(PurchaseFinished(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as InAppPurchaseResponse?,
      backendResponse: backendResponse == freezed
          ? _value.backendResponse
          : backendResponse // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
class _$PurchaseFinished implements PurchaseFinished {
  const _$PurchaseFinished(
      {required this.response, required this.backendResponse});

  @override
  final InAppPurchaseResponse? response;
  @override
  final dynamic backendResponse;

  @override
  String toString() {
    return 'IAPState.purchaseFinished(response: $response, backendResponse: $backendResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseFinished &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.backendResponse, backendResponse) ||
                const DeepCollectionEquality()
                    .equals(other.backendResponse, backendResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(backendResponse);

  @JsonKey(ignore: true)
  @override
  $PurchaseFinishedCopyWith<PurchaseFinished> get copyWith =>
      _$PurchaseFinishedCopyWithImpl<PurchaseFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InAppPurchaseItem> products) products,
    required TResult Function(bool success, String productId) finished,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
    required TResult Function(int count) purchaseRestored,
    required TResult Function(
            InAppPurchaseResponse? response, dynamic backendResponse)
        purchaseFinished,
    required TResult Function(InAppPurchaseError error) purchaseError,
  }) {
    return purchaseFinished(response, backendResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InAppPurchaseItem> products)? products,
    TResult Function(bool success, String productId)? finished,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    TResult Function(int count)? purchaseRestored,
    TResult Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult Function(InAppPurchaseError error)? purchaseError,
    required TResult orElse(),
  }) {
    if (purchaseFinished != null) {
      return purchaseFinished(response, backendResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Products value) products,
    required TResult Function(Finished value) finished,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(PurchaseRestored value) purchaseRestored,
    required TResult Function(PurchaseFinished value) purchaseFinished,
    required TResult Function(PurchaseError value) purchaseError,
  }) {
    return purchaseFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Products value)? products,
    TResult Function(Finished value)? finished,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(PurchaseRestored value)? purchaseRestored,
    TResult Function(PurchaseFinished value)? purchaseFinished,
    TResult Function(PurchaseError value)? purchaseError,
    required TResult orElse(),
  }) {
    if (purchaseFinished != null) {
      return purchaseFinished(this);
    }
    return orElse();
  }
}

abstract class PurchaseFinished implements IAPState {
  const factory PurchaseFinished(
      {required InAppPurchaseResponse? response,
      required dynamic backendResponse}) = _$PurchaseFinished;

  InAppPurchaseResponse? get response => throw _privateConstructorUsedError;
  dynamic get backendResponse => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseFinishedCopyWith<PurchaseFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseErrorCopyWith<$Res> {
  factory $PurchaseErrorCopyWith(
          PurchaseError value, $Res Function(PurchaseError) then) =
      _$PurchaseErrorCopyWithImpl<$Res>;
  $Res call({InAppPurchaseError error});
}

/// @nodoc
class _$PurchaseErrorCopyWithImpl<$Res> extends _$IAPStateCopyWithImpl<$Res>
    implements $PurchaseErrorCopyWith<$Res> {
  _$PurchaseErrorCopyWithImpl(
      PurchaseError _value, $Res Function(PurchaseError) _then)
      : super(_value, (v) => _then(v as PurchaseError));

  @override
  PurchaseError get _value => super._value as PurchaseError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(PurchaseError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as InAppPurchaseError,
    ));
  }
}

/// @nodoc
class _$PurchaseError implements PurchaseError {
  const _$PurchaseError({required this.error});

  @override
  final InAppPurchaseError error;

  @override
  String toString() {
    return 'IAPState.purchaseError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $PurchaseErrorCopyWith<PurchaseError> get copyWith =>
      _$PurchaseErrorCopyWithImpl<PurchaseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<InAppPurchaseItem> products) products,
    required TResult Function(bool success, String productId) finished,
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
    required TResult Function(int count) purchaseRestored,
    required TResult Function(
            InAppPurchaseResponse? response, dynamic backendResponse)
        purchaseFinished,
    required TResult Function(InAppPurchaseError error) purchaseError,
  }) {
    return purchaseError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<InAppPurchaseItem> products)? products,
    TResult Function(bool success, String productId)? finished,
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    TResult Function(int count)? purchaseRestored,
    TResult Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult Function(InAppPurchaseError error)? purchaseError,
    required TResult orElse(),
  }) {
    if (purchaseError != null) {
      return purchaseError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Products value) products,
    required TResult Function(Finished value) finished,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(PurchaseRestored value) purchaseRestored,
    required TResult Function(PurchaseFinished value) purchaseFinished,
    required TResult Function(PurchaseError value) purchaseError,
  }) {
    return purchaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Products value)? products,
    TResult Function(Finished value)? finished,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(PurchaseRestored value)? purchaseRestored,
    TResult Function(PurchaseFinished value)? purchaseFinished,
    TResult Function(PurchaseError value)? purchaseError,
    required TResult orElse(),
  }) {
    if (purchaseError != null) {
      return purchaseError(this);
    }
    return orElse();
  }
}

abstract class PurchaseError implements IAPState {
  const factory PurchaseError({required InAppPurchaseError error}) =
      _$PurchaseError;

  InAppPurchaseError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseErrorCopyWith<PurchaseError> get copyWith =>
      throw _privateConstructorUsedError;
}
