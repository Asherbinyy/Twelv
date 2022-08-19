// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pricing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PricingStateTearOff {
  const _$PricingStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  ApiError apiError(Exception error) {
    return ApiError(
      error,
    );
  }

  Info info({required Pricing pricing}) {
    return Info(
      pricing: pricing,
    );
  }

  Products products(
      {required Pricing pricing, required PremiumPopupPage page}) {
    return Products(
      pricing: pricing,
      page: page,
    );
  }
}

/// @nodoc
const $PricingState = _$PricingStateTearOff();

/// @nodoc
mixin _$PricingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Pricing pricing) info,
    required TResult Function(Pricing pricing, PremiumPopupPage page) products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Pricing pricing)? info,
    TResult Function(Pricing pricing, PremiumPopupPage page)? products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Info value) info,
    required TResult Function(Products value) products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Info value)? info,
    TResult Function(Products value)? products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingStateCopyWith<$Res> {
  factory $PricingStateCopyWith(
          PricingState value, $Res Function(PricingState) then) =
      _$PricingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PricingStateCopyWithImpl<$Res> implements $PricingStateCopyWith<$Res> {
  _$PricingStateCopyWithImpl(this._value, this._then);

  final PricingState _value;
  // ignore: unused_field
  final $Res Function(PricingState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PricingStateCopyWithImpl<$Res>
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
    return 'PricingState.initial()';
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
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Pricing pricing) info,
    required TResult Function(Pricing pricing, PremiumPopupPage page) products,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Pricing pricing)? info,
    TResult Function(Pricing pricing, PremiumPopupPage page)? products,
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
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Info value) info,
    required TResult Function(Products value) products,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Info value)? info,
    TResult Function(Products value)? products,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PricingState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PricingStateCopyWithImpl<$Res>
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
    return 'PricingState.loading()';
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
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Pricing pricing) info,
    required TResult Function(Pricing pricing, PremiumPopupPage page) products,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Pricing pricing)? info,
    TResult Function(Pricing pricing, PremiumPopupPage page)? products,
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
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Info value) info,
    required TResult Function(Products value) products,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Info value)? info,
    TResult Function(Products value)? products,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PricingState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res> extends _$PricingStateCopyWithImpl<$Res>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(ApiError _value, $Res Function(ApiError) _then)
      : super(_value, (v) => _then(v as ApiError));

  @override
  ApiError get _value => super._value as ApiError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ApiError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc
class _$ApiError implements ApiError {
  const _$ApiError(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'PricingState.apiError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ApiErrorCopyWith<ApiError> get copyWith =>
      _$ApiErrorCopyWithImpl<ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Pricing pricing) info,
    required TResult Function(Pricing pricing, PremiumPopupPage page) products,
  }) {
    return apiError(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Pricing pricing)? info,
    TResult Function(Pricing pricing, PremiumPopupPage page)? products,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Info value) info,
    required TResult Function(Products value) products,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Info value)? info,
    TResult Function(Products value)? products,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiError implements PricingState {
  const factory ApiError(Exception error) = _$ApiError;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res>;
  $Res call({Pricing pricing});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res> extends _$PricingStateCopyWithImpl<$Res>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(Info _value, $Res Function(Info) _then)
      : super(_value, (v) => _then(v as Info));

  @override
  Info get _value => super._value as Info;

  @override
  $Res call({
    Object? pricing = freezed,
  }) {
    return _then(Info(
      pricing: pricing == freezed
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing,
    ));
  }
}

/// @nodoc
class _$Info implements Info {
  const _$Info({required this.pricing});

  @override
  final Pricing pricing;

  @override
  String toString() {
    return 'PricingState.info(pricing: $pricing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Info &&
            (identical(other.pricing, pricing) ||
                const DeepCollectionEquality().equals(other.pricing, pricing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pricing);

  @JsonKey(ignore: true)
  @override
  $InfoCopyWith<Info> get copyWith =>
      _$InfoCopyWithImpl<Info>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Pricing pricing) info,
    required TResult Function(Pricing pricing, PremiumPopupPage page) products,
  }) {
    return info(pricing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Pricing pricing)? info,
    TResult Function(Pricing pricing, PremiumPopupPage page)? products,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(pricing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Info value) info,
    required TResult Function(Products value) products,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Info value)? info,
    TResult Function(Products value)? products,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }
}

abstract class Info implements PricingState {
  const factory Info({required Pricing pricing}) = _$Info;

  Pricing get pricing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res>;
  $Res call({Pricing pricing, PremiumPopupPage page});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res> extends _$PricingStateCopyWithImpl<$Res>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(Products _value, $Res Function(Products) _then)
      : super(_value, (v) => _then(v as Products));

  @override
  Products get _value => super._value as Products;

  @override
  $Res call({
    Object? pricing = freezed,
    Object? page = freezed,
  }) {
    return _then(Products(
      pricing: pricing == freezed
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PremiumPopupPage,
    ));
  }
}

/// @nodoc
class _$Products implements Products {
  const _$Products({required this.pricing, required this.page});

  @override
  final Pricing pricing;
  @override
  final PremiumPopupPage page;

  @override
  String toString() {
    return 'PricingState.products(pricing: $pricing, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Products &&
            (identical(other.pricing, pricing) ||
                const DeepCollectionEquality()
                    .equals(other.pricing, pricing)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pricing) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  $ProductsCopyWith<Products> get copyWith =>
      _$ProductsCopyWithImpl<Products>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Pricing pricing) info,
    required TResult Function(Pricing pricing, PremiumPopupPage page) products,
  }) {
    return products(pricing, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Pricing pricing)? info,
    TResult Function(Pricing pricing, PremiumPopupPage page)? products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(pricing, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Info value) info,
    required TResult Function(Products value) products,
  }) {
    return products(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Info value)? info,
    TResult Function(Products value)? products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this);
    }
    return orElse();
  }
}

abstract class Products implements PricingState {
  const factory Products(
      {required Pricing pricing, required PremiumPopupPage page}) = _$Products;

  Pricing get pricing => throw _privateConstructorUsedError;
  PremiumPopupPage get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}
