// ignore_for_file: no-magic-number

extension DoubleRangeString on double? {
  String toStringRange() {
    if (this == null) {
      return "null";
    }
    if (this! <= 10) {
      return "0_10";
    } else if (this! <= 20) {
      return "11_20";
    } else if (this! <= 30) {
      return "21_30";
    } else if (this! <= 40) {
      return "31_40";
    } else if (this! <= 50) {
      return "41_50";
    } else if (this! <= 60) {
      return "51_60";
    } else if (this! <= 70) {
      return "61_70";
    } else if (this! <= 80) {
      return "71_80";
    } else if (this! <= 90) {
      return "81_90";
    }
    return "91_100";
  }
}
