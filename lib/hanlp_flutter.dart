
import 'hanlp_flutter_platform_interface.dart';

class HanlpFlutter {

  Future<String?> getPlatformVersion() {
    return HanlpFlutterPlatform.instance.getPlatformVersion();
  }

  Future<String?> hans2hant(String text) {
    return HanlpFlutterPlatform.instance.hans2hant(text);
  }

}
