import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/generated/l10n.dart';

enum ZodiacSign {
  belier,
  taureau,
  gemeaux,
  cancer,
  lion,
  vierge,
  balance,
  scorpion,
  sagittaire,
  capricorne,
  verseau,
  poissons,
}

extension ZodiacSignImage on ZodiacSign {
  AssetImage image(BuildContext context) {
    switch (this) {
      case ZodiacSign.verseau:
        return context.theme.zodiacAquariusImage;
      case ZodiacSign.poissons:
        return context.theme.zodiacPiscesImage;
      case ZodiacSign.belier:
        return context.theme.zodiacAriesImage;
      case ZodiacSign.taureau:
        return context.theme.zodiacTaurusImage;
      case ZodiacSign.gemeaux:
        return context.theme.zodiacGeminiImage;
      case ZodiacSign.cancer:
        return context.theme.zodiacCancerImage;
      case ZodiacSign.lion:
        return context.theme.zodiacLeoImage;
      case ZodiacSign.vierge:
        return context.theme.zodiacVirgoImage;
      case ZodiacSign.balance:
        return context.theme.zodiacLibraImage;
      case ZodiacSign.scorpion:
        return context.theme.zodiacScorpioImage;
      case ZodiacSign.sagittaire:
        return context.theme.zodiacSagittariusImage;
      case ZodiacSign.capricorne:
        return context.theme.zodiacCapricornImage;
    }
  }

  String name(BuildContext context) {
    switch (this) {
      case ZodiacSign.belier:
        return Str.of(context).zodiacBelierName;
      case ZodiacSign.taureau:
        return Str.of(context).zodiacTaureauName;
      case ZodiacSign.gemeaux:
        return Str.of(context).zodiacGemeauxName;
      case ZodiacSign.cancer:
        return Str.of(context).zodiacCancerName;
      case ZodiacSign.lion:
        return Str.of(context).zodiacLionName;
      case ZodiacSign.vierge:
        return Str.of(context).zodiacViergeName;
      case ZodiacSign.balance:
        return Str.of(context).zodiacBalanceName;
      case ZodiacSign.scorpion:
        return Str.of(context).zodiacScorpionName;
      case ZodiacSign.sagittaire:
        return Str.of(context).zodiacSagittaireName;
      case ZodiacSign.capricorne:
        return Str.of(context).zodiacCapricorneName;
      case ZodiacSign.verseau:
        return Str.of(context).zodiacVerseauName;
      case ZodiacSign.poissons:
        return Str.of(context).zodiacPoissonsName;
    }
  }
}
