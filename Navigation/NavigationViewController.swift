import UIKit

final class NavigationViewController: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupTabBar()
    tabBar.isHidden = true
  }
  
  private func setupTabBar() {
    let menuViewController = createNavigationController(viewController: MenuViewController(), itemName: "MAIN", itemImage: "MainIcon", boolLarge: true)
    
    viewControllers = [menuViewController]
  }
  
  private func createNavigationController(viewController: UIViewController, itemName: String, itemImage: String, boolLarge: Bool) -> UINavigationController {
    let item = UITabBarItem(title: itemName, image: UIImage(named: "\(itemImage)"), tag: 0)
    item.titlePositionAdjustment = .init(horizontal: 0, vertical: 0)
    let navigationController = UINavigationController(rootViewController: viewController)
    navigationController.tabBarItem = item
    
    let navigationBarAppearance = UINavigationBarAppearance()
    navigationBarAppearance.configureWithOpaqueBackground()
    navigationBarAppearance.titleTextAttributes = [
        NSAttributedString.Key.foregroundColor :  #colorLiteral(red: 0.9882352941, green: 0.6901960784, blue: 0.07450980392, alpha: 1)
    ]
    navigationBarAppearance.backgroundColor = .clear
      navigationController.navigationBar.tintColor =  #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    navigationController.navigationBar.prefersLargeTitles = false
    UINavigationBar.appearance().standardAppearance = navigationBarAppearance
    UINavigationBar.appearance().compactAppearance = navigationBarAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
    
      tabBar.backgroundColor =  #colorLiteral(red: 0.1340514143, green: 0.5, blue: 0.3918766512, alpha: 1)
      tabBar.tintColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
      tabBar.unselectedItemTintColor =  #colorLiteral(red: 0.7597747549, green: 0.7597747549, blue: 0.7597747549, alpha: 0.9169302304)
    
    return navigationController
  }
}
