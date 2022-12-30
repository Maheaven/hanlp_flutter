//这里声明一下library, flutter_native_hlper就是项目名称
library hanlp_flutter;
//下面这两个，就是要对外公开的类（根据自己项目的需要来公开）
export 'package:hanlp_flutter/hanlp_flutter.dart';

import 'hanlp_flutter_platform_interface.dart';

class HanlpFlutter {

  static Future<String?> getPlatformVersion() {
    return HanlpFlutterPlatform.instance.getPlatformVersion();
  }

  static Future<String?> hans2hant(String text) {
    return HanlpFlutterPlatform.instance.hans2hant(text);
  }

}
