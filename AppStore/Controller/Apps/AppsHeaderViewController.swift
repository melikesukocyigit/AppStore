//
//  Untitled.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 24.11.2025.
//

import UIKit
class AAppsHeadeViewController: UICollectionViewController {
    // properties
    
    //lidecycle
    init() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        super.init(collectionViewLayout: flowLayout)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
