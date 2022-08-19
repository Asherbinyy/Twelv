import 'package:freezed_annotation/freezed_annotation.dart';

part 'compatibility.g.dart';

@JsonSerializable()
class Compatibility {
  final double? mainScore;

  final double? complementarityScore;

  final String? complementarityText;

  final double? sexualityScore;

  final String? sexualityText;

  final double? solidityScore;

  final String? solidityText;

  final double? complicityScore;

  final String? complicityText;

  final double? feelingsScore;

  final String? feelingsText;

  Compatibility(
      this.mainScore,
      this.complementarityScore,
      this.complementarityText,
      this.sexualityScore,
      this.sexualityText,
      this.solidityScore,
      this.solidityText,
      this.complicityScore,
      this.complicityText,
      this.feelingsScore,
      this.feelingsText);

  bool isNotEmpty() =>
      mainScore != null &&
      (complementarityScore != null ||
          sexualityScore != null ||
          solidityScore != null ||
          complicityScore != null ||
          feelingsScore != null);

  factory Compatibility.fromJson(Map<String, dynamic> json) => _$CompatibilityFromJson(json);

  Map<String, dynamic> toJson() => _$CompatibilityToJson(this);
}
