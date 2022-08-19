import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

class CryptoUtils {
  static const String _charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';

  String generateNonce([int length = 32]) {
    final Random random = Random.secure();
    return List<String>.generate(length, (_) => _charset[random.nextInt(_charset.length)]).join();
  }

  String sha256ofString(String input) => sha256.convert(utf8.encode(input)).toString();
}
