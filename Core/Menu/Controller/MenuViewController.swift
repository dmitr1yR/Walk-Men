import UIKit

class MenuViewController: UIViewController {
private var menuView: MenuView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
        setupView()
        setupTargets()
    }
    
    private func setupController() {
        navigationItem.backButtonTitle = ""
    }
    
    private func setupView() {
        menuView = MenuView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        menuView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(menuView)
        
        let constraints = [
            menuView.leftAnchor.constraint(equalTo: view.leftAnchor),
            menuView.rightAnchor.constraint(equalTo: view.rightAnchor),
            menuView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            menuView.topAnchor.constraint(equalTo: view.topAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupTargets() {
        menuView.rulesButton.addTarget(self, action: #selector(pushRules), for: .touchUpInside)
        menuView.settingsButton.addTarget(self, action: #selector(pushSettings), for: .touchUpInside)
    }
    
    @objc func pushRules() {
        navigationController?.pushViewController(RulesViewController(), animated: true)
    }
    
    @objc func pushSettings() {
        navigationController?.pushViewController(SettingsViewController(), animated: true)
    }
}
