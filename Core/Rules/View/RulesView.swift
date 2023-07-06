import UIKit

class RulesView: UIView {
    
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
    
    public let settingsImage: UIImageView = {
        let image = UIImage(named: "settings_ball")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let rulesImage: UIImageView = {
        let image = UIImage(named: "rules_ball")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let recordsImage: UIImageView = {
        let image = UIImage(named: "records_ball")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let playImage: UIButton = {
        let image = UIImage(named:"play_ball")
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
    
    public let darkBackGroundImage: UIImageView = {
        let image = UIImage(named: "darkBG")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    public let infoImage: UIImageView = {
        let image = UIImage(named: "BeatAll")
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
          addSubview(playerImage)
          addSubview(playShadowImage)
          addSubview(settingsShadowImage)
          addSubview(recordsShadowImage)
          addSubview(rulesShadowImage)
          addSubview(playerImage)
          addSubview(rulesImage)
          addSubview(playImage)
          addSubview(settingsImage)
          addSubview(recordsImage)
          addSubview(darkBackGroundImage)
          addSubview(infoImage)
        let constraints = [
            background.leftAnchor.constraint(equalTo: leftAnchor),
            background.rightAnchor.constraint(equalTo: rightAnchor),
            background.bottomAnchor.constraint(equalTo: bottomAnchor),
            background.topAnchor.constraint(equalTo: topAnchor),
            
            playerImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            playerImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            rulesImage.leftAnchor.constraint(equalTo: playerImage.centerXAnchor),
            rulesImage.bottomAnchor.constraint(equalTo: playerImage.centerYAnchor),
            
            recordsImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            recordsImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            settingsImage.leftAnchor.constraint(equalTo: playerImage.leftAnchor, constant: 20),
            settingsImage.bottomAnchor.constraint(equalTo: recordsImage.topAnchor),
            
            playImage.bottomAnchor.constraint(equalTo: settingsImage.centerYAnchor),
            playImage.rightAnchor.constraint(equalTo: rightAnchor, constant: -40),
            
            playShadowImage.bottomAnchor.constraint(equalTo: playImage.bottomAnchor, constant: 5),
            playShadowImage.centerXAnchor.constraint(equalTo: playImage.centerXAnchor, constant: 5),
            
            settingsShadowImage.bottomAnchor.constraint(equalTo: settingsImage.bottomAnchor, constant: 5),
            settingsShadowImage.centerXAnchor.constraint(equalTo: settingsImage.centerXAnchor, constant: 5),
            
            recordsShadowImage.bottomAnchor.constraint(equalTo: recordsImage.bottomAnchor, constant: 5),
            recordsShadowImage.centerXAnchor.constraint(equalTo: recordsImage.centerXAnchor, constant: 5),
            
            rulesShadowImage.bottomAnchor.constraint(equalTo: playerImage.bottomAnchor, constant: 5),
            rulesShadowImage.rightAnchor.constraint(equalTo: playerImage.rightAnchor),
            
            darkBackGroundImage.leftAnchor.constraint(equalTo: leftAnchor),
            darkBackGroundImage.rightAnchor.constraint(equalTo: rightAnchor),
            darkBackGroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            darkBackGroundImage.topAnchor.constraint(equalTo: topAnchor),
            
            infoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            infoImage.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
      }
}
