//
//  CellAContentView.swift
//  SIStarterTask
//
//  Created by Waleed Saad on 10/02/2025.
//

import UIKit

class CellAContentView: UIView {
    
    // MARK: - Views
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .label
        label.numberOfLines = 0
        return label
    }()
    
    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .secondaryLabel
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - View Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    // MARK: - APIs
    
    func configureContentViews(with viewModel: CellAContentViewModel?) {
        titleLabel.text = viewModel?.title
        subtitleLabel.text = viewModel?.subtitle
    }
    
    // MARK: - Methods
    
    private func commonInit() {
        addContentViews()
        configureContentViews(with: nil)
    }
    
    private func addContentViews() {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            layoutMarginsGuide.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
            layoutMarginsGuide.trailingAnchor.constraint(equalTo: stackView.trailingAnchor)
        ])
    }
}
