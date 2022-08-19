import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_state.freezed.dart';

@freezed
@immutable
abstract class LocationState with _$LocationState {
  const factory LocationState.initial() = Initial;

  const factory LocationState.loading() = Loading;

  const factory LocationState.apiError(Exception error) = APIError;

  const factory LocationState.gpsDenied(Exception error) = GPSDenied;

  const factory LocationState.success() = Success;
}
