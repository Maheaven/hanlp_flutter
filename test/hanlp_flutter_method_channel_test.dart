import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hanlp_flutter/hanlp_flutter_method_channel.dart';

void main() {
  MethodChannelHanlpFlutter platform = MethodChannelHanlpFlutter();
  const MethodChannel channel = MethodChannel('hanlp_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
