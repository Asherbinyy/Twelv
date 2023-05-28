// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'document_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentEvent {
  HtmlDocumentType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HtmlDocumentType type) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HtmlDocumentType type)? show,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Show value)? show,
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
      _$DocumentEventCopyWithImpl<$Res, DocumentEvent>;
  @useResult
  $Res call({HtmlDocumentType type});
}

/// @nodoc
class _$DocumentEventCopyWithImpl<$Res, $Val extends DocumentEvent>
    implements $DocumentEventCopyWith<$Res> {
  _$DocumentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HtmlDocumentType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowCopyWith<$Res> implements $DocumentEventCopyWith<$Res> {
  factory _$$ShowCopyWith(_$Show value, $Res Function(_$Show) then) =
      __$$ShowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HtmlDocumentType type});
}

/// @nodoc
class __$$ShowCopyWithImpl<$Res>
    extends _$DocumentEventCopyWithImpl<$Res, _$Show>
    implements _$$ShowCopyWith<$Res> {
  __$$ShowCopyWithImpl(_$Show _value, $Res Function(_$Show) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$Show(
      null == type
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
        (other.runtimeType == runtimeType &&
            other is _$Show &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowCopyWith<_$Show> get copyWith =>
      __$$ShowCopyWithImpl<_$Show>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HtmlDocumentType type) show,
  }) {
    return show(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HtmlDocumentType type)? show,
  }) {
    return show?.call(type);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Show value)? show,
  }) {
    return show?.call(this);
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
  const factory Show(final HtmlDocumentType type) = _$Show;

  @override
  HtmlDocumentType get type;
  @override
  @JsonKey(ignore: true)
  _$$ShowCopyWith<_$Show> get copyWith => throw _privateConstructorUsedError;
}
