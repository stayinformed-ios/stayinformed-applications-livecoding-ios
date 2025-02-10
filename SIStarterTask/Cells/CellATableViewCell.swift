//
//  CellATableViewCell.swift
//  SIStarterTask
//
//  Created by Waleed Saad on 10/02/2025.
//

import UIKit

class CellATableViewCell: UITableViewCell {
    
    // MARK: - Views
    
    private let cellContentView = CellAContentView()
    
    // MARK: - View Life Cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        configureCell(with: nil)
    }
    
    // MARK: - APIs
    
    func configureCell(with viewModel: CellAContentViewModel?) {
        cellContentView.configureContentViews(with: viewModel)        
    }
    
    // MARK: - Methods
    
    private func commonInit() {
        selectionStyle = .none
        addContentViews()
        configureCell(with: nil)
    }
    
    private func addContentViews() {
        contentView.addSubview(cellContentView)
        cellContentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cellContentView.topAnchor.constraint(equalTo: contentView.topAnchor),
            cellContentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: cellContentView.bottomAnchor),
            contentView.trailingAnchor.constraint(equalTo: cellContentView.trailingAnchor)
        ])
    }
}
