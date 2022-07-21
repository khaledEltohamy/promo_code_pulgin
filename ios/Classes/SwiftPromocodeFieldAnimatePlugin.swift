import Flutter
import UIKit

public class SwiftPromocodeFieldAnimatePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "promocode_field_animate", binaryMessenger: registrar.messenger())
    let instance = SwiftPromocodeFieldAnimatePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
