// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'channels_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChannelsSettingsTearOff {
  const _$ChannelsSettingsTearOff();

  _ChannelsSettings call(
      {required Filter filter,
      required List<SortOption<ChannelModel>> sortOptions}) {
    return _ChannelsSettings(
      filter: filter,
      sortOptions: sortOptions,
    );
  }
}

/// @nodoc
const $ChannelsSettings = _$ChannelsSettingsTearOff();

/// @nodoc
mixin _$ChannelsSettings {
  Filter get filter => throw _privateConstructorUsedError;
  List<SortOption<ChannelModel>> get sortOptions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelsSettingsCopyWith<ChannelsSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelsSettingsCopyWith<$Res> {
  factory $ChannelsSettingsCopyWith(
          ChannelsSettings value, $Res Function(ChannelsSettings) then) =
      _$ChannelsSettingsCopyWithImpl<$Res>;
  $Res call({Filter filter, List<SortOption<ChannelModel>> sortOptions});
}

/// @nodoc
class _$ChannelsSettingsCopyWithImpl<$Res>
    implements $ChannelsSettingsCopyWith<$Res> {
  _$ChannelsSettingsCopyWithImpl(this._value, this._then);

  final ChannelsSettings _value;
  // ignore: unused_field
  final $Res Function(ChannelsSettings) _then;

  @override
  $Res call({
    Object? filter = freezed,
    Object? sortOptions = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      sortOptions: sortOptions == freezed
          ? _value.sortOptions
          : sortOptions // ignore: cast_nullable_to_non_nullable
              as List<SortOption<ChannelModel>>,
    ));
  }
}

/// @nodoc
abstract class _$ChannelsSettingsCopyWith<$Res>
    implements $ChannelsSettingsCopyWith<$Res> {
  factory _$ChannelsSettingsCopyWith(
          _ChannelsSettings value, $Res Function(_ChannelsSettings) then) =
      __$ChannelsSettingsCopyWithImpl<$Res>;
  @override
  $Res call({Filter filter, List<SortOption<ChannelModel>> sortOptions});
}

/// @nodoc
class __$ChannelsSettingsCopyWithImpl<$Res>
    extends _$ChannelsSettingsCopyWithImpl<$Res>
    implements _$ChannelsSettingsCopyWith<$Res> {
  __$ChannelsSettingsCopyWithImpl(
      _ChannelsSettings _value, $Res Function(_ChannelsSettings) _then)
      : super(_value, (v) => _then(v as _ChannelsSettings));

  @override
  _ChannelsSettings get _value => super._value as _ChannelsSettings;

  @override
  $Res call({
    Object? filter = freezed,
    Object? sortOptions = freezed,
  }) {
    return _then(_ChannelsSettings(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      sortOptions: sortOptions == freezed
          ? _value.sortOptions
          : sortOptions // ignore: cast_nullable_to_non_nullable
              as List<SortOption<ChannelModel>>,
    ));
  }
}

/// @nodoc
class _$_ChannelsSettings implements _ChannelsSettings {
  const _$_ChannelsSettings({required this.filter, required this.sortOptions});

  @override
  final Filter filter;
  @override
  final List<SortOption<ChannelModel>> sortOptions;

  @override
  String toString() {
    return 'ChannelsSettings(filter: $filter, sortOptions: $sortOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelsSettings &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.sortOptions, sortOptions) ||
                const DeepCollectionEquality()
                    .equals(other.sortOptions, sortOptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(sortOptions);

  @JsonKey(ignore: true)
  @override
  _$ChannelsSettingsCopyWith<_ChannelsSettings> get copyWith =>
      __$ChannelsSettingsCopyWithImpl<_ChannelsSettings>(this, _$identity);
}

abstract class _ChannelsSettings implements ChannelsSettings {
  const factory _ChannelsSettings(
          {required Filter filter,
          required List<SortOption<ChannelModel>> sortOptions}) =
      _$_ChannelsSettings;

  @override
  Filter get filter => throw _privateConstructorUsedError;
  @override
  List<SortOption<ChannelModel>> get sortOptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChannelsSettingsCopyWith<_ChannelsSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
