
import 'kevin_app_platform_interface.dart';

class KevinApp {
  Future<String?> getPlatformVersion() {
    return KevinAppPlatform.instance.getPlatformVersion();
  }
}
