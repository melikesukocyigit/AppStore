//
//  AppCellDetailViewController.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 24.11.2025.
//

import UIKit
private let reuseIdentifier = "AppCellDetailCell"
class AppCellDetailViewController: UICollectionViewController {
    // properties
    var results: [FeedResult] = [] {
        didSet {
            collectionView.reloadData()
        }
    }
    //lifecycle
    init() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        super.init(collectionViewLayout: flowLayout )
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// Helpers

extension AppCellDetailViewController {
    private func style() {
        collectionView.register(AppCellDetailCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    private func layout() {
        
    }
}
//UICollectionViewDataSource
extension AppCellDetailViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.results.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        as! AppCellDetailCell
        cell.result = self.results[indexPath.row]
        return cell
    }
}
 // UICollectionViewDelegateFlowLayout hücre boyutları
extension AppCellDetailViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 30 , height: (view.frame.height) / 3 - 3 )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
}
