//
//  ScreenAViewController.swift
//  SIStarterTask
//
//  Created by Waleed Saad on 10/02/2025.
//

import UIKit

class ScreenAViewController: BaseViewController {
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Screen A"
        navigationItem.largeTitleDisplayMode = .never
        addListView()
    }
    
    // MARK: - Methods
    
    private func addListView() {
        let listViewController = ListViewController()
        addChild(listViewController)
        view.addSubview(listViewController.view)
        listViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            listViewController.view.topAnchor.constraint(equalTo: view.topAnchor),
            listViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            view.bottomAnchor.constraint(equalTo: listViewController.view.bottomAnchor),
            view.trailingAnchor.constraint(equalTo: listViewController.view.trailingAnchor)
        ])
        listViewController.didMove(toParent: self)
    }
}
