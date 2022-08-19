import 'dart:async';

import 'package:async/async.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/services/e2ee/e2ee_service.dart';

class E2eeServiceTweaksProxy implements E2eeService {
  final E2eeService _e2eeService;

  final Map<String, AsyncMemoizer<String>> _cachedDecryptedMsgs = <String, AsyncMemoizer<String>>{};

  E2eeServiceTweaksProxy(this._e2eeService);

  @override
  Future<void> generatePrivateKeyForCurrentUser(
          {required String uuid, required String e2eeToken}) =>
      _e2eeService.generatePrivateKeyForCurrentUser(uuid: uuid, e2eeToken: e2eeToken);

  @override
  Future<String> decrypt({required String encryptedMessage, String? senderUuid}) {
    if (_cachedDecryptedMsgs.containsKey(encryptedMessage)) {
      return _cachedDecryptedMsgs[encryptedMessage]!.future;
    } else {
      AsyncMemoizer<String> memoizer = AsyncMemoizer<String>();
      _cachedDecryptedMsgs[encryptedMessage] = memoizer;

      return memoizer.runOnce(() => _e2eeService
              .decrypt(encryptedMessage: encryptedMessage, senderUuid: senderUuid)
              .onError((Object error, StackTrace stackTrace) {
            logger().e("E2EE decrypt", error, stackTrace);
            return encryptedMessage;
          }));
    }
  }

  @override
  Future<String> encrypt({required String message, required List<String> membersUuids}) =>
      _e2eeService
          .encrypt(message: message, membersUuids: membersUuids)
          .onError((Object error, StackTrace stackTrace) {
        logger().e("E2EE encrypt", error, stackTrace);
        return message;
      });

  @override
  Future<void> disconnect() => _e2eeService.disconnect();
}
