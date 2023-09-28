import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    var flutterEngine: FlutterEngine? = nil
    
    var deeplinkManager: DeeplinkManager? = nil
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      self.flutterEngine = FlutterEngine(name: "my engine", project: nil)
      self.flutterEngine?.run(withEntrypoint: nil)
      deeplinkManager = DeeplinkManager(with: flutterEngine!)
      GeneratedPluginRegistrant.register(with: self.flutterEngine!)
      
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    
    /*override func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        if url.scheme == "nstsaas" {
            guard let components = NSURLComponents(url: url, resolvingAgainstBaseURL: true),
                let params = components.queryItems else {
                    print("Invalid URL or Yapily consent missing")
                    return false
            }
            var data = Dictionary<String, Any>()
            params.forEach { item in
                if (item.value != nil) {
                    data[item.name] = item.value!
                }
            }
            deeplinkManager?.methodChannel.invokeMethod("handleDeeplinkData", arguments: data)
        }
        return super.application(app, open: url, options: [:])
    }*/
    
}
