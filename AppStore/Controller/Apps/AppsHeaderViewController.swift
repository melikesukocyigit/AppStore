//
//  Untitled.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 24.11.2025.
//

import UIKit
private let reuseIdentifier = "AppsHeaderViewCell"
class AppsHeaderViewController: UICollectionViewController {
    // properties
    
    //lidecycle
    init() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        super.init(collectionViewLayout: flowLayout)
        style()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// helpers
extension AppsHeaderViewController {
    private func style() {
        collectionView.register(AppsHeaderViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
}

// UICollectionViewDataSource

extension AppsHeaderViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! AppsHeaderViewCell
        return cell
    }
}
// UICollectionViewDelegateFlowLayout
extension AppsHeaderViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 30, height: view.frame.height)
    }
}
