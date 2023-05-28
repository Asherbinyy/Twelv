// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'iap_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<InAppPurchaseItem> products)? products,
    TResult? Function(bool success, String productId)? finished,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(int count)? purchaseRestored,
    TResult? Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult? Function(InAppPurchaseError error)? purchaseError,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Products value)? products,
    TResult? Function(Finished value)? finished,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(PurchaseRestored value)? purchaseRestored,
    TResult? Function(PurchaseFinished value)? purchaseFinished,
    TResult? Function(PurchaseError value)? purchaseError,
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
      _$IAPStateCopyWithImpl<$Res, IAPState>;
}

/// @nodoc
class _$IAPStateCopyWithImpl<$Res, $Val extends IAPState>
    implements $IAPStateCopyWith<$Res> {
  _$IAPStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$IAPStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<InAppPurchaseItem> products)? products,
    TResult? Function(bool success, String productId)? finished,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(int count)? purchaseRestored,
    TResult? Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult? Function(InAppPurchaseError error)? purchaseError,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Products value)? products,
    TResult? Function(Finished value)? finished,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(PurchaseRestored value)? purchaseRestored,
    TResult? Function(PurchaseFinished value)? purchaseFinished,
    TResult? Function(PurchaseError value)? purchaseError,
  }) {
    return initial?.call(this);
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
abstract class _$$ProductsCopyWith<$Res> {
  factory _$$ProductsCopyWith(
          _$Products value, $Res Function(_$Products) then) =
      __$$ProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InAppPurchaseItem> products});
}

/// @nodoc
class __$$ProductsCopyWithImpl<$Res>
    extends _$IAPStateCopyWithImpl<$Res, _$Products>
    implements _$$ProductsCopyWith<$Res> {
  __$$ProductsCopyWithImpl(_$Products _value, $Res Function(_$Products) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$Products(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<InAppPurchaseItem>,
    ));
  }
}

/// @nodoc

class _$Products implements Products {
  const _$Products({required final List<InAppPurchaseItem> products})
      : _products = products;

  final List<InAppPurchaseItem> _products;
  @override
  List<InAppPurchaseItem> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'IAPState.products(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Products &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsCopyWith<_$Products> get copyWith =>
      __$$ProductsCopyWithImpl<_$Products>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<InAppPurchaseItem> products)? products,
    TResult? Function(bool success, String productId)? finished,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(int count)? purchaseRestored,
    TResult? Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult? Function(InAppPurchaseError error)? purchaseError,
  }) {
    return products?.call(this.products);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Products value)? products,
    TResult? Function(Finished value)? finished,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(PurchaseRestored value)? purchaseRestored,
    TResult? Function(PurchaseFinished value)? purchaseFinished,
    TResult? Function(PurchaseError value)? purchaseError,
  }) {
    return products?.call(this);
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
  const factory Products({required final List<InAppPurchaseItem> products}) =
      _$Products;

  List<InAppPurchaseItem> get products;
  @JsonKey(ignore: true)
  _$$ProductsCopyWith<_$Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedCopyWith<$Res> {
  factory _$$FinishedCopyWith(
          _$Finished value, $Res Function(_$Finished) then) =
      __$$FinishedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool success, String productId});
}

/// @nodoc
class __$$FinishedCopyWithImpl<$Res>
    extends _$IAPStateCopyWithImpl<$Res, _$Finished>
    implements _$$FinishedCopyWith<$Res> {
  __$$FinishedCopyWithImpl(_$Finished _value, $Res Function(_$Finished) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? productId = null,
  }) {
    return _then(_$Finished(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      productId: null == productId
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
        (other.runtimeType == runtimeType &&
            other is _$Finished &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedCopyWith<_$Finished> get copyWith =>
      __$$FinishedCopyWithImpl<_$Finished>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<InAppPurchaseItem> products)? products,
    TResult? Function(bool success, String productId)? finished,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(int count)? purchaseRestored,
    TResult? Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult? Function(InAppPurchaseError error)? purchaseError,
  }) {
    return finished?.call(success, productId);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Products value)? products,
    TResult? Function(Finished value)? finished,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(PurchaseRestored value)? purchaseRestored,
    TResult? Function(PurchaseFinished value)? purchaseFinished,
    TResult? Function(PurchaseError value)? purchaseError,
  }) {
    return finished?.call(this);
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
  const factory Finished(
      {required final bool success,
      required final String productId}) = _$Finished;

  bool get success;
  String get productId;
  @JsonKey(ignore: true)
  _$$FinishedCopyWith<_$Finished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$IAPStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<InAppPurchaseItem> products)? products,
    TResult? Function(bool success, String productId)? finished,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(int count)? purchaseRestored,
    TResult? Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult? Function(InAppPurchaseError error)? purchaseError,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Products value)? products,
    TResult? Function(Finished value)? finished,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(PurchaseRestored value)? purchaseRestored,
    TResult? Function(PurchaseFinished value)? purchaseFinished,
    TResult? Function(PurchaseError value)? purchaseError,
  }) {
    return loading?.call(this);
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
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$IAPStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Error(
      error: null == error
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
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<InAppPurchaseItem> products)? products,
    TResult? Function(bool success, String productId)? finished,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(int count)? purchaseRestored,
    TResult? Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult? Function(InAppPurchaseError error)? purchaseError,
  }) {
    return error?.call(this.error);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Products value)? products,
    TResult? Function(Finished value)? finished,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(PurchaseRestored value)? purchaseRestored,
    TResult? Function(PurchaseFinished value)? purchaseFinished,
    TResult? Function(PurchaseError value)? purchaseError,
  }) {
    return error?.call(this);
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
  const factory Error({required final dynamic error}) = _$Error;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseRestoredCopyWith<$Res> {
  factory _$$PurchaseRestoredCopyWith(
          _$PurchaseRestored value, $Res Function(_$PurchaseRestored) then) =
      __$$PurchaseRestoredCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$PurchaseRestoredCopyWithImpl<$Res>
    extends _$IAPStateCopyWithImpl<$Res, _$PurchaseRestored>
    implements _$$PurchaseRestoredCopyWith<$Res> {
  __$$PurchaseRestoredCopyWithImpl(
      _$PurchaseRestored _value, $Res Function(_$PurchaseRestored) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$PurchaseRestored(
      count: null == count
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
        (other.runtimeType == runtimeType &&
            other is _$PurchaseRestored &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseRestoredCopyWith<_$PurchaseRestored> get copyWith =>
      __$$PurchaseRestoredCopyWithImpl<_$PurchaseRestored>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<InAppPurchaseItem> products)? products,
    TResult? Function(bool success, String productId)? finished,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(int count)? purchaseRestored,
    TResult? Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult? Function(InAppPurchaseError error)? purchaseError,
  }) {
    return purchaseRestored?.call(count);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Products value)? products,
    TResult? Function(Finished value)? finished,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(PurchaseRestored value)? purchaseRestored,
    TResult? Function(PurchaseFinished value)? purchaseFinished,
    TResult? Function(PurchaseError value)? purchaseError,
  }) {
    return purchaseRestored?.call(this);
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
  const factory PurchaseRestored({required final int count}) =
      _$PurchaseRestored;

  int get count;
  @JsonKey(ignore: true)
  _$$PurchaseRestoredCopyWith<_$PurchaseRestored> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseFinishedCopyWith<$Res> {
  factory _$$PurchaseFinishedCopyWith(
          _$PurchaseFinished value, $Res Function(_$PurchaseFinished) then) =
      __$$PurchaseFinishedCopyWithImpl<$Res>;
  @useResult
  $Res call({InAppPurchaseResponse? response, dynamic backendResponse});
}

/// @nodoc
class __$$PurchaseFinishedCopyWithImpl<$Res>
    extends _$IAPStateCopyWithImpl<$Res, _$PurchaseFinished>
    implements _$$PurchaseFinishedCopyWith<$Res> {
  __$$PurchaseFinishedCopyWithImpl(
      _$PurchaseFinished _value, $Res Function(_$PurchaseFinished) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? backendResponse = null,
  }) {
    return _then(_$PurchaseFinished(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as InAppPurchaseResponse?,
      backendResponse: null == backendResponse
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
        (other.runtimeType == runtimeType &&
            other is _$PurchaseFinished &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality()
                .equals(other.backendResponse, backendResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response,
      const DeepCollectionEquality().hash(backendResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseFinishedCopyWith<_$PurchaseFinished> get copyWith =>
      __$$PurchaseFinishedCopyWithImpl<_$PurchaseFinished>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<InAppPurchaseItem> products)? products,
    TResult? Function(bool success, String productId)? finished,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(int count)? purchaseRestored,
    TResult? Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult? Function(InAppPurchaseError error)? purchaseError,
  }) {
    return purchaseFinished?.call(response, backendResponse);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Products value)? products,
    TResult? Function(Finished value)? finished,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(PurchaseRestored value)? purchaseRestored,
    TResult? Function(PurchaseFinished value)? purchaseFinished,
    TResult? Function(PurchaseError value)? purchaseError,
  }) {
    return purchaseFinished?.call(this);
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
      {required final InAppPurchaseResponse? response,
      required final dynamic backendResponse}) = _$PurchaseFinished;

  InAppPurchaseResponse? get response;
  dynamic get backendResponse;
  @JsonKey(ignore: true)
  _$$PurchaseFinishedCopyWith<_$PurchaseFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseErrorCopyWith<$Res> {
  factory _$$PurchaseErrorCopyWith(
          _$PurchaseError value, $Res Function(_$PurchaseError) then) =
      __$$PurchaseErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({InAppPurchaseError error});
}

/// @nodoc
class __$$PurchaseErrorCopyWithImpl<$Res>
    extends _$IAPStateCopyWithImpl<$Res, _$PurchaseError>
    implements _$$PurchaseErrorCopyWith<$Res> {
  __$$PurchaseErrorCopyWithImpl(
      _$PurchaseError _value, $Res Function(_$PurchaseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PurchaseError(
      error: null == error
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
        (other.runtimeType == runtimeType &&
            other is _$PurchaseError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseErrorCopyWith<_$PurchaseError> get copyWith =>
      __$$PurchaseErrorCopyWithImpl<_$PurchaseError>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<InAppPurchaseItem> products)? products,
    TResult? Function(bool success, String productId)? finished,
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(int count)? purchaseRestored,
    TResult? Function(InAppPurchaseResponse? response, dynamic backendResponse)?
        purchaseFinished,
    TResult? Function(InAppPurchaseError error)? purchaseError,
  }) {
    return purchaseError?.call(this.error);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Products value)? products,
    TResult? Function(Finished value)? finished,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(PurchaseRestored value)? purchaseRestored,
    TResult? Function(PurchaseFinished value)? purchaseFinished,
    TResult? Function(PurchaseError value)? purchaseError,
  }) {
    return purchaseError?.call(this);
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
  const factory PurchaseError({required final InAppPurchaseError error}) =
      _$PurchaseError;

  InAppPurchaseError get error;
  @JsonKey(ignore: true)
  _$$PurchaseErrorCopyWith<_$PurchaseError> get copyWith =>
      throw _privateConstructorUsedError;
}
