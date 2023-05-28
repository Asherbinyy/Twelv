import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/generated/l10n.dart';

enum Gender {
  @JsonValue("FEMALE")
  female,

  @JsonValue("MALE")
  male,

  @JsonValue("OTHERS")
  other
}

extension GenderHelper on Gender {
  String apiValue() {
    switch (this) {
      case Gender.female:
        return "FEMALE";
      case Gender.male:
        return "MALE";
      case Gender.other:
        return "OTHERS";
    }
  }

  static List<String> getRadios(BuildContext context, {required bool isMe}) => Gender.values
      .map((Gender element) => getLocalizedDescription(context, element, isMe: isMe))
      .toList();

  static Gender? fromString(BuildContext context, String? name, {required bool isMe}) =>
      Gender.values.firstWhere(
          (Gender element) => getLocalizedDescription(context, element, isMe: isMe) == name);

  static String? genderToString(BuildContext context, Gender? gender, {required bool isMe}) {
    return gender == null ? null : getLocalizedDescription(context, gender, isMe: isMe);
  }

  static String getLocalizedDescription(BuildContext context, Gender gender, {required bool isMe}) {
    switch (gender) {
      case Gender.female:
        return isMe
            ? Str.of(context).genderMyWomanSelectionTitle
            : Str.of(context).genderInterestedInWomanSelectionTitle;
      case Gender.male:
        return isMe
            ? Str.of(context).genderMyManSelectionTitle
            : Str.of(context).genderInterestedInManSelectionTitle;
      case Gender.other:
        return isMe
            ? Str.of(context).genderMyOtherSelectionTitle
            : Str.of(context).genderInterestedInOtherSelectionTitle;
    }
  }
}
