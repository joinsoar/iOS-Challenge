//
//  MainViewController.swift
//  Soar iOS challenge
//
//  Created by Stanley Virgint on 8/22/25.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    private var cardView: CardView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        setupCardView()
        setupGestures()
    }
    
    // MARK: - Setup
    private func setupViewController() {
        view.backgroundColor = .systemGroupedBackground
        title = "Wallet"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupCardView() {
        cardView = CardView(cardData: CardData.sample)
        view.addSubview(cardView)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            cardView.heightAnchor.constraint(equalToConstant: 280)
        ])
    }
    
    private func setupGestures() {
        // TODO: Add your gesture recognizers here!
        
        // Example: Tap gesture for basic interaction
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(cardTapped))
        cardView.addGestureRecognizer(tapGesture)
        
        // TODO: Add more gestures based on your chosen animation:
        // - UIPanGestureRecognizer for swipe actions
        // - UITapGestureRecognizer for flip/expand animations
        // - Custom gesture combinations
    }
    
    // MARK: - Actions
    @objc private func cardTapped() {
        // TODO: Implement your chosen card interaction!
        print("🎯 Card tapped - implement your animation here!")
        
        // Simple example animation (replace with your implementation)
        cardView.pulse()
    }
}

// MARK: - Animation Implementation
extension MainViewController {
    
    /// TODO: Implement your chosen animation option here
    /// 
    /// Option 1: Flip Animation
    /// - Create 3D rotation effect
    /// - Switch between front/back content
    /// - Add perspective transform
    ///
    /// Option 2: Swipe Actions  
    /// - Add pan gesture recognition
    /// - Reveal action buttons
    /// - Implement spring physics
    ///
    /// Option 3: Expand Animation
    /// - Scale card up/down
    /// - Show/hide detailed content
    /// - Add background dimming
    private func implementCustomAnimation() {
        // Your animation code goes here!
    }
}
