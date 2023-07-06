import UIKit

class RulesViewController: UIViewController {
        private var rulesView: RulesView!
            override func viewDidLoad() {
                super.viewDidLoad()
                setupController()
                setupView()
            }
            
            private func setupController() {
                navigationItem.backButtonTitle = ""
            }
            
            private func setupView() {
                rulesView = RulesView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
                rulesView.translatesAutoresizingMaskIntoConstraints = false
                
                view.addSubview(rulesView)
                
                let constraints = [
                    rulesView.leftAnchor.constraint(equalTo: view.leftAnchor),
                    rulesView.rightAnchor.constraint(equalTo: view.rightAnchor),
                    rulesView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                    rulesView.topAnchor.constraint(equalTo: view.topAnchor)
                ]
                NSLayoutConstraint.activate(constraints)
            }
        }

