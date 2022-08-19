import 'package:hive/hive.dart';

class AppInstallTracker {
  bool? _isFirstAppSession;

  Future<void> init() => Hive.openBox<bool>("firstUseBox").then((Box<bool> box) {
        _isFirstAppSession = box.isEmpty;
        box.put("firstUse", false);
      });

  bool get isFirstAppSession {
    if (_isFirstAppSession == null) throw "$runtimeType.init() must be called";
    return _isFirstAppSession!;
  }
}
