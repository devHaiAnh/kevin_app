#import "KevinAppPlugin.h"
#if __has_include(<kevin_app/kevin_app-Swift.h>)
#import <kevin_app/kevin_app-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "kevin_app-Swift.h"
#endif

@implementation KevinAppPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKevinAppPlugin registerWithRegistrar:registrar];
}
@end
