
import UIKit

class SettingsViewController: UIViewController {
    private var settingsView: SettingsView!
        override func viewDidLoad() {
            super.viewDidLoad()
            setupController()
            setupView()
        }
        
        private func setupController() {
            navigationItem.backButtonTitle = ""
        }
        
        private func setupView() {
            settingsView = SettingsView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
            settingsView.translatesAutoresizingMaskIntoConstraints = false
            
            view.addSubview(settingsView)
            
            let constraints = [
                settingsView.leftAnchor.constraint(equalTo: view.leftAnchor),
                settingsView.rightAnchor.constraint(equalTo: view.rightAnchor),
                settingsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                settingsView.topAnchor.constraint(equalTo: view.topAnchor)
            ]
            NSLayoutConstraint.activate(constraints)
        }
    }
