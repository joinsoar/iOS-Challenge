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
    

}


