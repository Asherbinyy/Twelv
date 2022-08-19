extension StringExtension on String {
  String capitalized() {
    return length > 1
        ? "${this[0].toUpperCase()}${substring(1)}"
        : length > 0
            ? this[0].toUpperCase()
            : "";
  }

  String get htmlFromPOE => replaceAll("[[", "<").replaceAll("]]", ">");

  String get newLinesEscaped => replaceAll('\\n', '\n');
}
