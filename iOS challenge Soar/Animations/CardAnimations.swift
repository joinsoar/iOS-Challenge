//
//  CardAnimations.swift
//  Soar iOS challenge
//
//  Created by Stanley Virgint on 8/22/25.
//

import UIKit

/// Animation utilities for your card component
/// Implement your chosen animation here!
class CardAnimations {
    
    // MARK: - Base Animation Helper
    
    /// Smooth spring animation - perfect for natural interactions
    static func springAnimation(
        duration: TimeInterval = 0.6,
        dampingRatio: CGFloat = 0.8,
        animations: @escaping () -> Void,
        completion: ((Bool) -> Void)? = nil
    ) {
        UIView.animate(
            withDuration: duration,
            delay: 0,
            usingSpringWithDamping: dampingRatio,
            initialSpringVelocity: 0,
            options: [.allowUserInteraction],
            animations: animations,
            completion: completion
        )
    }
    
    // MARK: - Your Animation Implementation
    
    // TODO: Choose ONE animation option and implement it here!
    
    // Option 1: Flip Card Animation
    // static func flipCard(_ cardView: UIView, showingBack: Bool, completion: @escaping () -> Void) {
    //     // Implement 3D flip with perspective transform
    // }
    
    // Option 2: Swipe Action Animation  
    // static func animateSwipeReveal(_ cardView: UIView, direction: SwipeDirection, offset: CGFloat) {
    //     // Implement swipe gesture with action reveal
    // }
    
    // Option 3: Expand Animation
    // static func animateExpand(_ cardView: UIView, isExpanded: Bool) {
    //     // Implement scale and content animation
    // }
    
}

// MARK: - Animation Constants
extension CardAnimations {
    enum Constants {
        static let flipDuration: TimeInterval = 0.8
        static let swipeDuration: TimeInterval = 0.4
        static let expandDuration: TimeInterval = 0.5
        static let springDamping: CGFloat = 0.8
    }
}

// MARK: - Swipe Actions (for Option 2)
enum SwipeDirection {
    case left   // Action 1
    case right  // Action 2
    
    var color: UIColor {
        switch self {
        case .left: return .systemBlue
        case .right: return .systemGreen
        }
    }
    
    var title: String {
        switch self {
        case .left: return "Like"
        case .right: return "Save"
        }
    }
}
