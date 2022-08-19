import 'package:freezed_annotation/freezed_annotation.dart';

part 'cookies_event.freezed.dart';

@freezed
@immutable
abstract class CookiesEvent with _$CookiesEvent {
  const factory CookiesEvent.initial() = Initial;

  const factory CookiesEvent.update({required bool analytics, required bool errorTracking}) =
      Update;
}
