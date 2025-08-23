//
//  UIView+Extensions.swift
//  Soar iOS challenge
//
//  Created by Stanley Virgint on 8/22/25.
//

import UIKit

extension UIView {
    
    // MARK: - Animation Helpers
    
    /// Quick spring animation for natural interactions
    func animateSpring(
        duration: TimeInterval = 0.6,
        damping: CGFloat = 0.8,
        animations: @escaping () -> Void,
        completion: ((Bool) -> Void)? = nil
    ) {
        UIView.animate(
            withDuration: duration,
            delay: 0,
            usingSpringWithDamping: damping,
            initialSpringVelocity: 0,
            options: [.allowUserInteraction],
            animations: animations,
            completion: completion
        )
    }
    
    /// Simple pulse animation for feedback
    func pulse(scale: CGFloat = 1.05) {
        animateSpring(duration: 0.2, damping: 0.7) {
            self.transform = CGAffineTransform(scaleX: scale, y: scale)
        } completion: { _ in
            self.animateSpring(duration: 0.2, damping: 0.7) {
                self.transform = .identity
            }
        }
    }
    
    // MARK: - Gesture Helpers
    
    /// Quick tap gesture setup
    @discardableResult
    func addTapGesture(target: Any?, action: Selector) -> UITapGestureRecognizer {
        let tapGesture = UITapGestureRecognizer(target: target, action: action)
        addGestureRecognizer(tapGesture)
        isUserInteractionEnabled = true
        return tapGesture
    }
    
    /// Quick pan gesture setup
    @discardableResult
    func addPanGesture(target: Any?, action: Selector) -> UIPanGestureRecognizer {
        let panGesture = UIPanGestureRecognizer(target: target, action: action)
        addGestureRecognizer(panGesture)
        isUserInteractionEnabled = true
        return panGesture
    }
    
    // MARK: - Layout Helpers
    
    /// Pin to superview edges
    func pinToSuperview(insets: UIEdgeInsets = .zero) {
        guard let superview = superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: insets.top),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: insets.left),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -insets.right),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -insets.bottom)
        ])
    }
}

// MARK: - Haptic Feedback
extension UIView {
    /// Add haptic feedback to interactions
    func hapticFeedback(_ style: UIImpactFeedbackGenerator.FeedbackStyle = .medium) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}
