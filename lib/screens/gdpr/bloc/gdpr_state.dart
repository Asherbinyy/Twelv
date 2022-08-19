import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gdpr_state.freezed.dart';

@freezed
@immutable
abstract class GdprState with _$GdprState {
  const factory GdprState.initial() = Initial;

  const factory GdprState.accepted() = Accepted;

  const factory GdprState.notAccepted() = NotAccepted;

  const factory GdprState.loading() = Loading;

  const factory GdprState.apiError(Exception e) = ApiError;
}
