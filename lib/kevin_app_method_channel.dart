import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'kevin_app_platform_interface.dart';

/// An implementation of [KevinAppPlatform] that uses method channels.
class MethodChannelKevinApp extends KevinAppPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('kevin_app');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
