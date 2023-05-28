// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pricing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(Pricing pricing)? info,
    TResult? Function(Pricing pricing, PremiumPopupPage page)? products,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Info value)? info,
    TResult? Function(Products value)? products,
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
      _$PricingStateCopyWithImpl<$Res, PricingState>;
}

/// @nodoc
class _$PricingStateCopyWithImpl<$Res, $Val extends PricingState>
    implements $PricingStateCopyWith<$Res> {
  _$PricingStateCopyWithImpl(this._value, this._then);

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
    extends _$PricingStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(Pricing pricing)? info,
    TResult? Function(Pricing pricing, PremiumPopupPage page)? products,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Info value)? info,
    TResult? Function(Products value)? products,
  }) {
    return initial?.call(this);
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
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$PricingStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(Pricing pricing)? info,
    TResult? Function(Pricing pricing, PremiumPopupPage page)? products,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Info value)? info,
    TResult? Function(Products value)? products,
  }) {
    return loading?.call(this);
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
abstract class _$$ApiErrorCopyWith<$Res> {
  factory _$$ApiErrorCopyWith(
          _$ApiError value, $Res Function(_$ApiError) then) =
      __$$ApiErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$ApiErrorCopyWithImpl<$Res>
    extends _$PricingStateCopyWithImpl<$Res, _$ApiError>
    implements _$$ApiErrorCopyWith<$Res> {
  __$$ApiErrorCopyWithImpl(_$ApiError _value, $Res Function(_$ApiError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ApiError(
      null == error
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
        (other.runtimeType == runtimeType &&
            other is _$ApiError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      __$$ApiErrorCopyWithImpl<_$ApiError>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(Pricing pricing)? info,
    TResult? Function(Pricing pricing, PremiumPopupPage page)? products,
  }) {
    return apiError?.call(error);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Info value)? info,
    TResult? Function(Products value)? products,
  }) {
    return apiError?.call(this);
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
  const factory ApiError(final Exception error) = _$ApiError;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InfoCopyWith<$Res> {
  factory _$$InfoCopyWith(_$Info value, $Res Function(_$Info) then) =
      __$$InfoCopyWithImpl<$Res>;
  @useResult
  $Res call({Pricing pricing});
}

/// @nodoc
class __$$InfoCopyWithImpl<$Res>
    extends _$PricingStateCopyWithImpl<$Res, _$Info>
    implements _$$InfoCopyWith<$Res> {
  __$$InfoCopyWithImpl(_$Info _value, $Res Function(_$Info) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pricing = null,
  }) {
    return _then(_$Info(
      pricing: null == pricing
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
        (other.runtimeType == runtimeType &&
            other is _$Info &&
            (identical(other.pricing, pricing) || other.pricing == pricing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pricing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoCopyWith<_$Info> get copyWith =>
      __$$InfoCopyWithImpl<_$Info>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(Pricing pricing)? info,
    TResult? Function(Pricing pricing, PremiumPopupPage page)? products,
  }) {
    return info?.call(pricing);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Info value)? info,
    TResult? Function(Products value)? products,
  }) {
    return info?.call(this);
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
  const factory Info({required final Pricing pricing}) = _$Info;

  Pricing get pricing;
  @JsonKey(ignore: true)
  _$$InfoCopyWith<_$Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsCopyWith<$Res> {
  factory _$$ProductsCopyWith(
          _$Products value, $Res Function(_$Products) then) =
      __$$ProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({Pricing pricing, PremiumPopupPage page});
}

/// @nodoc
class __$$ProductsCopyWithImpl<$Res>
    extends _$PricingStateCopyWithImpl<$Res, _$Products>
    implements _$$ProductsCopyWith<$Res> {
  __$$ProductsCopyWithImpl(_$Products _value, $Res Function(_$Products) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pricing = null,
    Object? page = null,
  }) {
    return _then(_$Products(
      pricing: null == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing,
      page: null == page
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
        (other.runtimeType == runtimeType &&
            other is _$Products &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pricing, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsCopyWith<_$Products> get copyWith =>
      __$$ProductsCopyWithImpl<_$Products>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(Pricing pricing)? info,
    TResult? Function(Pricing pricing, PremiumPopupPage page)? products,
  }) {
    return products?.call(pricing, page);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Info value)? info,
    TResult? Function(Products value)? products,
  }) {
    return products?.call(this);
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
      {required final Pricing pricing,
      required final PremiumPopupPage page}) = _$Products;

  Pricing get pricing;
  PremiumPopupPage get page;
  @JsonKey(ignore: true)
  _$$ProductsCopyWith<_$Products> get copyWith =>
      throw _privateConstructorUsedError;
}
