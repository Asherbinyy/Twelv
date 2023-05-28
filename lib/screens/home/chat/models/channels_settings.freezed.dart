// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channels_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$ChannelsSettingsCopyWithImpl<$Res, ChannelsSettings>;
  @useResult
  $Res call({Filter filter, List<SortOption<ChannelModel>> sortOptions});
}

/// @nodoc
class _$ChannelsSettingsCopyWithImpl<$Res, $Val extends ChannelsSettings>
    implements $ChannelsSettingsCopyWith<$Res> {
  _$ChannelsSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? sortOptions = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      sortOptions: null == sortOptions
          ? _value.sortOptions
          : sortOptions // ignore: cast_nullable_to_non_nullable
              as List<SortOption<ChannelModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelsSettingsCopyWith<$Res>
    implements $ChannelsSettingsCopyWith<$Res> {
  factory _$$_ChannelsSettingsCopyWith(
          _$_ChannelsSettings value, $Res Function(_$_ChannelsSettings) then) =
      __$$_ChannelsSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Filter filter, List<SortOption<ChannelModel>> sortOptions});
}

/// @nodoc
class __$$_ChannelsSettingsCopyWithImpl<$Res>
    extends _$ChannelsSettingsCopyWithImpl<$Res, _$_ChannelsSettings>
    implements _$$_ChannelsSettingsCopyWith<$Res> {
  __$$_ChannelsSettingsCopyWithImpl(
      _$_ChannelsSettings _value, $Res Function(_$_ChannelsSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? sortOptions = null,
  }) {
    return _then(_$_ChannelsSettings(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      sortOptions: null == sortOptions
          ? _value._sortOptions
          : sortOptions // ignore: cast_nullable_to_non_nullable
              as List<SortOption<ChannelModel>>,
    ));
  }
}

/// @nodoc

class _$_ChannelsSettings implements _ChannelsSettings {
  const _$_ChannelsSettings(
      {required this.filter,
      required final List<SortOption<ChannelModel>> sortOptions})
      : _sortOptions = sortOptions;

  @override
  final Filter filter;
  final List<SortOption<ChannelModel>> _sortOptions;
  @override
  List<SortOption<ChannelModel>> get sortOptions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortOptions);
  }

  @override
  String toString() {
    return 'ChannelsSettings(filter: $filter, sortOptions: $sortOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelsSettings &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other._sortOptions, _sortOptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, filter, const DeepCollectionEquality().hash(_sortOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelsSettingsCopyWith<_$_ChannelsSettings> get copyWith =>
      __$$_ChannelsSettingsCopyWithImpl<_$_ChannelsSettings>(this, _$identity);
}

abstract class _ChannelsSettings implements ChannelsSettings {
  const factory _ChannelsSettings(
          {required final Filter filter,
          required final List<SortOption<ChannelModel>> sortOptions}) =
      _$_ChannelsSettings;

  @override
  Filter get filter;
  @override
  List<SortOption<ChannelModel>> get sortOptions;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelsSettingsCopyWith<_$_ChannelsSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
