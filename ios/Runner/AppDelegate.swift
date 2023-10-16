import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    channel = FlutterMethodChannel(name: "platform_channel", binaryMessenger: self.flutterEngine.binaryMessenger)
        channel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) in
            if call.method == "getOSVersion" {
                result(UIDevice.current.systemVersion)
            } else {
                result(FlutterMethodNotImplemented)
            }
        }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

}
