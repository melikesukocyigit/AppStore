//
//  AppsHeaderViewCell.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 24.11.2025.
//

import UIKit
class AppsHeaderViewCell: UICollectionViewCell {
    // properties
    private let appImage: UIImageView = {
        let imageView = UIImageView()
        imageView.customMode()
        imageView.backgroundColor = .cyan
        return imageView
    }()
    private let firmLabel: UILabel = {
        let label = UILabel()
        label.text = "Linkedin"
        label.textColor = .blue
        return label
    }()
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "init(coder:) has not been implemented init(coder:) has not been implemented"
        return label
    }()
    private var stackView: UIStackView!

    // lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// helpers

extension AppsHeaderViewCell {
    private func style() {
        stackView = UIStackView(arrangedSubviews: [firmLabel,titleLabel,appImage])
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    private func layout() {
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
       
}
