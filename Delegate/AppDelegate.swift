import UIKit

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window : UIWindow?
    var supportedOrientation: UIInterfaceOrientationMask = .portrait
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = NavigationViewController()
        window?.makeKeyAndVisible()
        window?.overrideUserInterfaceStyle = .dark
        
        return true
    }
    
    class var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return supportedOrientation
    }
}
