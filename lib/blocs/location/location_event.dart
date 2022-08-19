import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_event.freezed.dart';

@freezed
@immutable
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.userAsked() = UserAsked;

  const factory LocationEvent.updateApi({required bool askAgain}) = UpdateApi;
}
