import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

part 'channels_settings.freezed.dart';

@freezed
class ChannelsSettings with _$ChannelsSettings {
  const factory ChannelsSettings(
      {required Filter filter,
      required List<SortOption<ChannelModel>> sortOptions}) = _ChannelsSettings;
}
