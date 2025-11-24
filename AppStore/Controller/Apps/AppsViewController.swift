//
//  AppViewController.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 21.11.2025.
//

import UIKit
private let reuseIdentifier = "AppCell"
class AppsViewController: UICollectionViewController {
    //Properties
    //Lifecycle
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
    }
}
// Helpers

extension AppsViewController {
    
    private func style() {
        view.backgroundColor = .green
        collectionView.register(AppCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }
    private func layout() {
        
    }
}


// UICollectionViewDataSource
extension AppsViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        as! AppCell
        return cell
    }
}

extension AppsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 250)
    }
}
