import 'package:flutter_test/flutter_test.dart';
import 'package:hanlp_flutter/hanlp_flutter.dart';
import 'package:hanlp_flutter/hanlp_flutter_platform_interface.dart';
import 'package:hanlp_flutter/hanlp_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHanlpFlutterPlatform
    with MockPlatformInterfaceMixin
    implements HanlpFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HanlpFlutterPlatform initialPlatform = HanlpFlutterPlatform.instance;

  test('$MethodChannelHanlpFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHanlpFlutter>());
  });

  test('getPlatformVersion', () async {
    HanlpFlutter hanlpFlutterPlugin = HanlpFlutter();
    MockHanlpFlutterPlatform fakePlatform = MockHanlpFlutterPlatform();
    HanlpFlutterPlatform.instance = fakePlatform;

    expect(await hanlpFlutterPlugin.getPlatformVersion(), '42');
  });
}
