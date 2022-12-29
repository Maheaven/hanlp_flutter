#include "include/hanlp_flutter/hanlp_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "hanlp_flutter_plugin.h"

void HanlpFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  hanlp_flutter::HanlpFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
