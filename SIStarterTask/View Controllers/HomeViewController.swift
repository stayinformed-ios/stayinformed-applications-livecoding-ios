//
//  HomeViewController.swift
//  SIStarterTask
//
//  Created by Waleed Saad on 10/02/2025.
//

import UIKit

class HomeViewController: BaseViewController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .always
        title = "Stay Informed"
        addContentViews()
    }
    
    // MARK: - Methods
    
    private func addContentViews() {
        let buttonA = UIButton(primaryAction: .init(title: "Screen A", handler: { [weak self] _ in
            self?.didTapScreenAButton()
        }))
        
        let buttonB = UIButton(primaryAction: .init(title: "Screen B", handler: { [weak self] _ in
            self?.didTapScreenBButton()
        }))
        
        let stackView = UIStackView(arrangedSubviews: [buttonA, buttonB])
        stackView.axis = .vertical
        stackView.spacing = 32
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
        ])
    }

    private func didTapScreenAButton() {
        navigationController?.pushViewController(ScreenAViewController(), animated: true)
    }
    
    private func didTapScreenBButton() {
        navigationController?.pushViewController(ScreenBViewController(), animated: true)
    }
}
