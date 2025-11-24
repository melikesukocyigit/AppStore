//
//  AppsHeaderView.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 24.11.2025.
//

import UIKit
class AppsHeaderView: UICollectionReusableView {
    // properties
    private let appsHeaderViewController = AppsHeaderViewController()
    
    // lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

// helpers
extension AppsHeaderView {
    private func style() {
        appsHeaderViewController.view.translatesAutoresizingMaskIntoConstraints = false
    }
    private func layout() {
        addSubview(appsHeaderViewController.view)
        NSLayoutConstraint.activate([
            appsHeaderViewController.view.topAnchor.constraint(equalTo: topAnchor),
            appsHeaderViewController.view.leadingAnchor.constraint(equalTo: leadingAnchor),
            appsHeaderViewController.view.trailingAnchor.constraint(equalTo: trailingAnchor),
            appsHeaderViewController.view.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
}
