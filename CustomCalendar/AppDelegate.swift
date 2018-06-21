import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        self.window = UIWindow(frame: UIScreen.main.bounds)
        if let window = self.window {
            window.backgroundColor = UIColor.white
            let nav = UINavigationController()
            let mainView = ViewController()
            nav.viewControllers = [mainView]
            window.rootViewController = nav
            window.makeKeyAndVisible()
        }

        return true
    }

}
