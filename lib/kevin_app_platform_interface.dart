import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'kevin_app_method_channel.dart';

abstract class KevinAppPlatform extends PlatformInterface {
  /// Constructs a KevinAppPlatform.
  KevinAppPlatform() : super(token: _token);

  static final Object _token = Object();

  static KevinAppPlatform _instance = MethodChannelKevinApp();

  /// The default instance of [KevinAppPlatform] to use.
  ///
  /// Defaults to [MethodChannelKevinApp].
  static KevinAppPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [KevinAppPlatform] when
  /// they register themselves.
  static set instance(KevinAppPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
