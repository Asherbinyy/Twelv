// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pricing_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PricingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(PremiumPopupPage page) changePage,
    required TResult Function() back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(PremiumPopupPage page)? changePage,
    TResult? Function()? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(PremiumPopupPage page)? changePage,
    TResult Function()? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(Back value) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(Back value)? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(ChangePage value)? changePage,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingEventCopyWith<$Res> {
  factory $PricingEventCopyWith(
          PricingEvent value, $Res Function(PricingEvent) then) =
      _$PricingEventCopyWithImpl<$Res, PricingEvent>;
}

/// @nodoc
class _$PricingEventCopyWithImpl<$Res, $Val extends PricingEvent>
    implements $PricingEventCopyWith<$Res> {
  _$PricingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchCopyWith<$Res> {
  factory _$$FetchCopyWith(_$Fetch value, $Res Function(_$Fetch) then) =
      __$$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCopyWithImpl<$Res>
    extends _$PricingEventCopyWithImpl<$Res, _$Fetch>
    implements _$$FetchCopyWith<$Res> {
  __$$FetchCopyWithImpl(_$Fetch _value, $Res Function(_$Fetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Fetch implements Fetch {
  const _$Fetch();

  @override
  String toString() {
    return 'PricingEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(PremiumPopupPage page) changePage,
    required TResult Function() back,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(PremiumPopupPage page)? changePage,
    TResult? Function()? back,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(PremiumPopupPage page)? changePage,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(Back value) back,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(Back value)? back,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(ChangePage value)? changePage,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements PricingEvent {
  const factory Fetch() = _$Fetch;
}

/// @nodoc
abstract class _$$ChangePageCopyWith<$Res> {
  factory _$$ChangePageCopyWith(
          _$ChangePage value, $Res Function(_$ChangePage) then) =
      __$$ChangePageCopyWithImpl<$Res>;
  @useResult
  $Res call({PremiumPopupPage page});
}

/// @nodoc
class __$$ChangePageCopyWithImpl<$Res>
    extends _$PricingEventCopyWithImpl<$Res, _$ChangePage>
    implements _$$ChangePageCopyWith<$Res> {
  __$$ChangePageCopyWithImpl(
      _$ChangePage _value, $Res Function(_$ChangePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$ChangePage(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PremiumPopupPage,
    ));
  }
}

/// @nodoc

class _$ChangePage implements ChangePage {
  const _$ChangePage({required this.page});

  @override
  final PremiumPopupPage page;

  @override
  String toString() {
    return 'PricingEvent.changePage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePage &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageCopyWith<_$ChangePage> get copyWith =>
      __$$ChangePageCopyWithImpl<_$ChangePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(PremiumPopupPage page) changePage,
    required TResult Function() back,
  }) {
    return changePage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(PremiumPopupPage page)? changePage,
    TResult? Function()? back,
  }) {
    return changePage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(PremiumPopupPage page)? changePage,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(Back value) back,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(Back value)? back,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(ChangePage value)? changePage,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class ChangePage implements PricingEvent {
  const factory ChangePage({required final PremiumPopupPage page}) =
      _$ChangePage;

  PremiumPopupPage get page;
  @JsonKey(ignore: true)
  _$$ChangePageCopyWith<_$ChangePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackCopyWith<$Res> {
  factory _$$BackCopyWith(_$Back value, $Res Function(_$Back) then) =
      __$$BackCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackCopyWithImpl<$Res>
    extends _$PricingEventCopyWithImpl<$Res, _$Back>
    implements _$$BackCopyWith<$Res> {
  __$$BackCopyWithImpl(_$Back _value, $Res Function(_$Back) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Back implements Back {
  const _$Back();

  @override
  String toString() {
    return 'PricingEvent.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Back);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(PremiumPopupPage page) changePage,
    required TResult Function() back,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(PremiumPopupPage page)? changePage,
    TResult? Function()? back,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(PremiumPopupPage page)? changePage,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(Back value) back,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(Back value)? back,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(ChangePage value)? changePage,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class Back implements PricingEvent {
  const factory Back() = _$Back;
}
