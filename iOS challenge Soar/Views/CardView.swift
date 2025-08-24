import UIKit

class CardView: UIView {
    
    let titleLabel = UILabel()
    let subtitleLabel = UILabel() 
    let contentLabel = UILabel()
    
    init(cardData: CardData) {
        super.init(frame: .zero)
        
        // Basic card styling
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 12
        layer.shadowOpacity = 0.1
        
        // Add labels
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(contentLabel)
        
        // Configure title
        titleLabel.font = .boldSystemFont(ofSize: 24)
        titleLabel.textAlignment = .center
        titleLabel.text = cardData.title
        
        // Configure subtitle
        subtitleLabel.font = .systemFont(ofSize: 16, weight: .medium)
        subtitleLabel.textColor = .secondaryLabel
        subtitleLabel.textAlignment = .center
        subtitleLabel.text = cardData.subtitle
        
        // Configure content
        contentLabel.font = .systemFont(ofSize: 14)
        contentLabel.textColor = .secondaryLabel
        contentLabel.numberOfLines = 0
        contentLabel.textAlignment = .center
        contentLabel.text = cardData.frontContent
        
        // Layout
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        
        contentLabel.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 24).isActive = true
        contentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        contentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        contentLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


