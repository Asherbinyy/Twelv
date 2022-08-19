import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';

part 'horoscope.g.dart';

@JsonSerializable()
class Horoscope {
  final String? belier;
  final String? taureau;
  final String? gemeaux;
  final String? cancer;
  final String? lion;
  final String? vierge;
  final String? balance;
  final String? scorpion;
  final String? sagittaire;
  final String? capricorne;
  final String? verseau;
  final String? poissons;

  Horoscope(
      {this.belier,
      this.taureau,
      this.gemeaux,
      this.cancer,
      this.lion,
      this.vierge,
      this.balance,
      this.scorpion,
      this.sagittaire,
      this.capricorne,
      this.verseau,
      this.poissons});

  factory Horoscope.fromJson(Map<String, dynamic> json) => _$HoroscopeFromJson(json);

  Map<String, dynamic> toJson() => _$HoroscopeToJson(this);
}

extension HoroscopeFromZodiac on Horoscope {
  String? fromZodiacSign(ZodiacSign? zodiacSign) {
    switch (zodiacSign) {
      case ZodiacSign.verseau:
        return verseau;
      case ZodiacSign.poissons:
        return poissons;
      case ZodiacSign.belier:
        return belier;
      case ZodiacSign.taureau:
        return taureau;
      case ZodiacSign.gemeaux:
        return gemeaux;
      case ZodiacSign.cancer:
        return cancer;
      case ZodiacSign.lion:
        return lion;
      case ZodiacSign.vierge:
        return vierge;
      case ZodiacSign.balance:
        return balance;
      case ZodiacSign.scorpion:
        return scorpion;
      case ZodiacSign.sagittaire:
        return sagittaire;
      case ZodiacSign.capricorne:
        return capricorne;
      default:
        return "";
    }
  }
}
