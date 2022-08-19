// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pricing_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PricingEventTearOff {
  const _$PricingEventTearOff();

  Fetch fetch() {
    return const Fetch();
  }

  ChangePage changePage({required PremiumPopupPage page}) {
    return ChangePage(
      page: page,
    );
  }

  Back back() {
    return const Back();
  }
}

/// @nodoc
const $PricingEvent = _$PricingEventTearOff();

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
      _$PricingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PricingEventCopyWithImpl<$Res> implements $PricingEventCopyWith<$Res> {
  _$PricingEventCopyWithImpl(this._value, this._then);

  final PricingEvent _value;
  // ignore: unused_field
  final $Res Function(PricingEvent) _then;
}

/// @nodoc
abstract class $FetchCopyWith<$Res> {
  factory $FetchCopyWith(Fetch value, $Res Function(Fetch) then) =
      _$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchCopyWithImpl<$Res> extends _$PricingEventCopyWithImpl<$Res>
    implements $FetchCopyWith<$Res> {
  _$FetchCopyWithImpl(Fetch _value, $Res Function(Fetch) _then)
      : super(_value, (v) => _then(v as Fetch));

  @override
  Fetch get _value => super._value as Fetch;
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
    return identical(this, other) || (other is Fetch);
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
abstract class $ChangePageCopyWith<$Res> {
  factory $ChangePageCopyWith(
          ChangePage value, $Res Function(ChangePage) then) =
      _$ChangePageCopyWithImpl<$Res>;
  $Res call({PremiumPopupPage page});
}

/// @nodoc
class _$ChangePageCopyWithImpl<$Res> extends _$PricingEventCopyWithImpl<$Res>
    implements $ChangePageCopyWith<$Res> {
  _$ChangePageCopyWithImpl(ChangePage _value, $Res Function(ChangePage) _then)
      : super(_value, (v) => _then(v as ChangePage));

  @override
  ChangePage get _value => super._value as ChangePage;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(ChangePage(
      page: page == freezed
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
        (other is ChangePage &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  $ChangePageCopyWith<ChangePage> get copyWith =>
      _$ChangePageCopyWithImpl<ChangePage>(this, _$identity);

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
  const factory ChangePage({required PremiumPopupPage page}) = _$ChangePage;

  PremiumPopupPage get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePageCopyWith<ChangePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackCopyWith<$Res> {
  factory $BackCopyWith(Back value, $Res Function(Back) then) =
      _$BackCopyWithImpl<$Res>;
}

/// @nodoc
class _$BackCopyWithImpl<$Res> extends _$PricingEventCopyWithImpl<$Res>
    implements $BackCopyWith<$Res> {
  _$BackCopyWithImpl(Back _value, $Res Function(Back) _then)
      : super(_value, (v) => _then(v as Back));

  @override
  Back get _value => super._value as Back;
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
    return identical(this, other) || (other is Back);
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
