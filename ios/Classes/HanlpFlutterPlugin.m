#import "HanlpFlutterPlugin.h"
#if __has_include(<hanlp_flutter/hanlp_flutter-Swift.h>)
#import <hanlp_flutter/hanlp_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hanlp_flutter-Swift.h"
#endif

@implementation HanlpFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHanlpFlutterPlugin registerWithRegistrar:registrar];
}
@end
