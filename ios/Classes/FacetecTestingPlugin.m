#import "FacetecTestingPlugin.h"
#if __has_include(<facetec_testing_plugin/facetec_testing_plugin-Swift.h>)
#import <facetec_testing_plugin/facetec_testing_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "facetec_testing_plugin-Swift.h"
#endif

@implementation FacetecTestingPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFacetecTestingPlugin registerWithRegistrar:registrar];
}
@end
