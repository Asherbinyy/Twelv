import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gdpr_bloc_event.freezed.dart';

@freezed
@immutable
abstract class GdprEvent with _$GdprEvent {
  const factory GdprEvent.check() = Check;

  const factory GdprEvent.userDecided({required bool accepted}) = UserDecided;
}
