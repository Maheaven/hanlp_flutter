import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hanlp_flutter_method_channel.dart';

abstract class HanlpFlutterPlatform extends PlatformInterface {
  /// Constructs a HanlpFlutterPlatform.
  HanlpFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static HanlpFlutterPlatform _instance = MethodChannelHanlpFlutter();

  /// The default instance of [HanlpFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelHanlpFlutter].
  static HanlpFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HanlpFlutterPlatform] when
  /// they register themselves.
  static set instance(HanlpFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String> hans2hant(String text) {
    throw UnimplementedError('hans2hant() has not been implemented.');
  }
}
