import 'dart:async';

import 'package:flutter/services.dart';
import 'package:twelv/di/app_module.dart';
import 'package:virgil_e3kit/virgil_e3kit.dart';

class E2eeService {
  late Ethree _ethree;
  late String _myCryptoCard;
  late String _myUuid;

  Future<void> generatePrivateKeyForCurrentUser(
      {required String uuid, required String e2eeToken}) async {
    _ethree = (await Ethree.init(uuid, () async => e2eeToken))!;
    _myUuid = uuid;
    try {
      final bool hasLocalPrivateKey = await _ethree.hasLocalPrivateKey() ?? false;
      if (!hasLocalPrivateKey) {
        await _ethree.register();
        await _ethree.backupPrivateKey(uuid);
      }
    } on PlatformException catch (e) {
      if (e.isAlreadyRegistered) {
        await _ethree.restorePrivateKey(uuid);
      } else {
        logger().e("Cannot register current user in e2ee system", e);
        return;
      }
    }

    _myCryptoCard = await _ethree.findUser(uuid);
    await _ethree.updateCachedUsers();
    logger().d("E2EE - user is ready");
  }

  Future<void> disconnect() async {
    await _ethree.cleanup();
    _myCryptoCard = "";
    _myUuid = "";
  }

  Future<String> encrypt({required String message, required List<String> membersUuids}) async {
    final Map<dynamic, dynamic> correspondingE2eeUsers =
        await _ethree.findUsers(membersUuids, /* forceReload: */ true);
    return await _ethree.authEncrypt(correspondingE2eeUsers, message) ?? message;
  }

  Future<String> decrypt({required String encryptedMessage, String? senderUuid}) async {
    final String? senderCard =
        senderUuid == null || senderUuid == _myUuid ? null : await _ethree.findUser(senderUuid);
    return await _ethree.authDecrypt(encryptedMessage, senderCard ?? _myCryptoCard) ??
        encryptedMessage;
  }
}

extension _PlatformExceptionExt on PlatformException {
  bool get isAlreadyRegistered =>
      message?.contains("already registered") == true ||
      details?.toString().contains("already registered") == true;
}
