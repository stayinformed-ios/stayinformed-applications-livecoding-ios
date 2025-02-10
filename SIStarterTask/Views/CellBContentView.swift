//
//  CellBContentView.swift
//  SIStarterTask
//
//  Created by Waleed Saad on 10/02/2025.
//

import UIKit

class CellBContentView: UIView {
    
    // MARK: - Views
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .label
        label.numberOfLines = 0
        return label
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 24),
            imageView.heightAnchor.constraint(equalToConstant: 24)
        ])
        return imageView
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
    
    func configureContentViews(with viewModel: CellBContentViewModel?) {
        titleLabel.text = viewModel?.title
        imageView.image = viewModel?.image
    }
    
    // MARK: - Methods
    
    private func commonInit() {
        addContentViews()
        configureContentViews(with: nil)
    }
    
    private func addContentViews() {
        let stackView = UIStackView(arrangedSubviews: [imageView, titleLabel])
        stackView.spacing = 8
        stackView.alignment = .center
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
