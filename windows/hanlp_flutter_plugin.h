#ifndef FLUTTER_PLUGIN_HANLP_FLUTTER_PLUGIN_H_
#define FLUTTER_PLUGIN_HANLP_FLUTTER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace hanlp_flutter {

class HanlpFlutterPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  HanlpFlutterPlugin();

  virtual ~HanlpFlutterPlugin();

  // Disallow copy and assign.
  HanlpFlutterPlugin(const HanlpFlutterPlugin&) = delete;
  HanlpFlutterPlugin& operator=(const HanlpFlutterPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace hanlp_flutter

#endif  // FLUTTER_PLUGIN_HANLP_FLUTTER_PLUGIN_H_
