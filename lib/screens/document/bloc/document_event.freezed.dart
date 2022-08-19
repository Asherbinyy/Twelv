// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'document_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DocumentEventTearOff {
  const _$DocumentEventTearOff();

  Show show(HtmlDocumentType type) {
    return Show(
      type,
    );
  }
}

/// @nodoc
const $DocumentEvent = _$DocumentEventTearOff();

/// @nodoc
mixin _$DocumentEvent {
  HtmlDocumentType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HtmlDocumentType type) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HtmlDocumentType type)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Show value) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Show value)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentEventCopyWith<DocumentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentEventCopyWith<$Res> {
  factory $DocumentEventCopyWith(
          DocumentEvent value, $Res Function(DocumentEvent) then) =
      _$DocumentEventCopyWithImpl<$Res>;
  $Res call({HtmlDocumentType type});
}

/// @nodoc
class _$DocumentEventCopyWithImpl<$Res>
    implements $DocumentEventCopyWith<$Res> {
  _$DocumentEventCopyWithImpl(this._value, this._then);

  final DocumentEvent _value;
  // ignore: unused_field
  final $Res Function(DocumentEvent) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HtmlDocumentType,
    ));
  }
}

/// @nodoc
abstract class $ShowCopyWith<$Res> implements $DocumentEventCopyWith<$Res> {
  factory $ShowCopyWith(Show value, $Res Function(Show) then) =
      _$ShowCopyWithImpl<$Res>;
  @override
  $Res call({HtmlDocumentType type});
}

/// @nodoc
class _$ShowCopyWithImpl<$Res> extends _$DocumentEventCopyWithImpl<$Res>
    implements $ShowCopyWith<$Res> {
  _$ShowCopyWithImpl(Show _value, $Res Function(Show) _then)
      : super(_value, (v) => _then(v as Show));

  @override
  Show get _value => super._value as Show;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(Show(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HtmlDocumentType,
    ));
  }
}

/// @nodoc
class _$Show implements Show {
  const _$Show(this.type);

  @override
  final HtmlDocumentType type;

  @override
  String toString() {
    return 'DocumentEvent.show(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Show &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $ShowCopyWith<Show> get copyWith =>
      _$ShowCopyWithImpl<Show>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HtmlDocumentType type) show,
  }) {
    return show(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HtmlDocumentType type)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Show value) show,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Show value)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class Show implements DocumentEvent {
  const factory Show(HtmlDocumentType type) = _$Show;

  @override
  HtmlDocumentType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShowCopyWith<Show> get copyWith => throw _privateConstructorUsedError;
}
