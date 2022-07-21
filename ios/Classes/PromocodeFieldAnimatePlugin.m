#import "PromocodeFieldAnimatePlugin.h"
#if __has_include(<promocode_field_animate/promocode_field_animate-Swift.h>)
#import <promocode_field_animate/promocode_field_animate-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "promocode_field_animate-Swift.h"
#endif

@implementation PromocodeFieldAnimatePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPromocodeFieldAnimatePlugin registerWithRegistrar:registrar];
}
@end
