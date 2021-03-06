import Flutter
import UIKit
import FaceTecSDK


public class SwiftFacetecTestingPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "facetec_testing_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFacetecTestingPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
   // result("iOS " + UIDevice.current.systemVersion)
   Config.initializeFaceTecSDKFromAutogeneratedConfig(completion: { initializationSuccessful in
               if(initializationSuccessful) {
                   print("success")
                   result("success")
               }
               else{
                 result("fail")
               }

           })
  }
}
