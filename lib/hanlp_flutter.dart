
import 'hanlp_flutter_platform_interface.dart';

class HanlpFlutter {
  Future<String?> getPlatformVersion() {
    return HanlpFlutterPlatform.instance.getPlatformVersion();
  }
}
