// ignore_for_file: no-magic-number

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:twelv/model/user/base_user.dart';

part 'recommendations_filters.g.dart';

@JsonSerializable()
@HiveType(typeId: 0) // ignore: no-magic-number
class RecommendationsFilters extends HiveObject {
  static int defaultAgeMax = 100;
  static int defaultAgeMin = 18;
  static int distanceMin = 1;
  static int distanceMax = 160;

  @JsonKey(name: "age_min")
  @HiveField(0)
  final int ageMin;

  @JsonKey(name: "age_max")
  @HiveField(1)
  final int ageMax;

  @JsonKey(name: "distance")
  @HiveField(2)
  final int distance;

  factory RecommendationsFilters.fromUser(BaseUser? user) {
    if (user == null) {
      return RecommendationsFilters.fromDefault();
    }
    final int ageMin = user.age - 5 < RecommendationsFilters.defaultAgeMin
        ? RecommendationsFilters.defaultAgeMin
        : user.age - 5;
    final int ageMax = user.age + 5 > RecommendationsFilters.defaultAgeMax
        ? RecommendationsFilters.defaultAgeMax
        : user.age + 5;
    return RecommendationsFilters(ageMin: ageMin, ageMax: ageMax, distance: 10);
  }

  factory RecommendationsFilters.fromDefault() =>
      RecommendationsFilters(ageMin: 18, ageMax: 100, distance: 10);

  factory RecommendationsFilters.fromRange(
          {required RangeValues ageRange, required int distance}) =>
      RecommendationsFilters(
          ageMin: ageRange.start.round(), ageMax: ageRange.end.round(), distance: distance);

  RangeValues ageRange() => RangeValues(ageMin.toDouble(), ageMax.toDouble());

  RecommendationsFilters({required this.ageMin, required this.ageMax, required this.distance});

  factory RecommendationsFilters.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsFiltersFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationsFiltersToJson(this);
}
