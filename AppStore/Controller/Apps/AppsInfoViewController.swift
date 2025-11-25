//
//  AppsInfoViewController.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 25.11.2025.
//

import UIKit
private let reuseHeaderCellIdentifier: String = "HeaderCell"
class AppsInfoViewController : UICollectionViewController {
    // PROPERTİES
    
    // LIFECYCLE
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
}


// helpers
extension AppsInfoViewController {
    private func style() {
        self.navigationItem.largeTitleDisplayMode = .never
        collectionView.register(AppInfoHeaderCell.self, forCellWithReuseIdentifier: reuseHeaderCellIdentifier)
    }

}

//UICOLLECTIONVIEWDATASOURCE
extension AppsInfoViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseHeaderCellIdentifier, for: indexPath)
        as! AppInfoHeaderCell
        return cell
    }
}

//
extension AppsInfoViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 250)
    }
}
