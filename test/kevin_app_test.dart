import 'package:flutter_test/flutter_test.dart';
import 'package:kevin_app/kevin_app.dart';
import 'package:kevin_app/kevin_app_platform_interface.dart';
import 'package:kevin_app/kevin_app_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockKevinAppPlatform
    with MockPlatformInterfaceMixin
    implements KevinAppPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final KevinAppPlatform initialPlatform = KevinAppPlatform.instance;

  test('$MethodChannelKevinApp is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelKevinApp>());
  });

  test('getPlatformVersion', () async {
    KevinApp kevinAppPlugin = KevinApp();
    MockKevinAppPlatform fakePlatform = MockKevinAppPlatform();
    KevinAppPlatform.instance = fakePlatform;

    expect(await kevinAppPlugin.getPlatformVersion(), '42');
  });
}
