import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'hanlp_flutter_platform_interface.dart';

/// An implementation of [HanlpFlutterPlatform] that uses method channels.
class MethodChannelHanlpFlutter extends HanlpFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('hanlp_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> hans2hant(String text) async {
    final String? res = await methodChannel.invokeMethod('hans2hant', text);
    return res!;
  }
}
