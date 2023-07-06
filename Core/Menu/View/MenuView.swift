import UIKit

class MenuView: UIView {
    
    public let background: UIImageView = {
        let image = UIImage(named: "menu background")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let playerImage: UIImageView = {
        let image = UIImage(named: "PlayerImage")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let settingsButton: UIButton = {
        let image = UIImage(named:"settings")
        let imageView = UIButton()
        imageView.setBackgroundImage(image, for: .normal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let rulesButton: UIButton = {
        let image = UIImage(named:"rules")
        let imageView = UIButton()
        imageView.setBackgroundImage(image, for: .normal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let recordsButton: UIButton = {
        let image = UIImage(named:"records")
        let imageView = UIButton()
        imageView.setBackgroundImage(image, for: .normal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let playButton: UIButton = {
        let image = UIImage(named:"play")
        let imageView = UIButton()
        imageView.setBackgroundImage(image, for: .normal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let playShadowImage: UIImageView = {
        let image = UIImage(named: "shadow(play)")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let settingsShadowImage: UIImageView = {
        let image = UIImage(named: "shadow(settings)")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let recordsShadowImage: UIImageView = {
        let image = UIImage(named: "shadow(records)")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let rulesShadowImage: UIImageView = {
        let image = UIImage(named: "shadow(records)")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
      }
      
      required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      }
      
      private func setup() {
          addSubview(background)
          addSubview(playShadowImage)
          addSubview(settingsShadowImage)
          addSubview(recordsShadowImage)
          addSubview(rulesShadowImage)
          addSubview(playerImage)
          addSubview(rulesButton)
          addSubview(playButton)
          addSubview(settingsButton)
          addSubview(recordsButton)
        let constraints = [
            background.leftAnchor.constraint(equalTo: leftAnchor),
            background.rightAnchor.constraint(equalTo: rightAnchor),
            background.bottomAnchor.constraint(equalTo: bottomAnchor),
            background.topAnchor.constraint(equalTo: topAnchor),
            
            playerImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            playerImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            rulesButton.leftAnchor.constraint(equalTo: playerImage.centerXAnchor),
            rulesButton.bottomAnchor.constraint(equalTo: playerImage.centerYAnchor),
            
            recordsButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            recordsButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            settingsButton.leftAnchor.constraint(equalTo: playerImage.leftAnchor, constant: 20),
            settingsButton.bottomAnchor.constraint(equalTo: recordsButton.topAnchor),
            
            playButton.bottomAnchor.constraint(equalTo: settingsButton.centerYAnchor),
            playButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -40),
            
            playShadowImage.bottomAnchor.constraint(equalTo: playButton.bottomAnchor, constant: 5),
            playShadowImage.centerXAnchor.constraint(equalTo: playButton.centerXAnchor, constant: 5),
            
            settingsShadowImage.bottomAnchor.constraint(equalTo: settingsButton.bottomAnchor, constant: 5),
            settingsShadowImage.centerXAnchor.constraint(equalTo: settingsButton.centerXAnchor, constant: 5),
            
            recordsShadowImage.bottomAnchor.constraint(equalTo: recordsButton.bottomAnchor, constant: 5),
            recordsShadowImage.centerXAnchor.constraint(equalTo: recordsButton.centerXAnchor, constant: 5),
            
            rulesShadowImage.bottomAnchor.constraint(equalTo: playerImage.bottomAnchor, constant: 5),
            rulesShadowImage.rightAnchor.constraint(equalTo: playerImage.rightAnchor),
        ]
        NSLayoutConstraint.activate(constraints)
      }
}
