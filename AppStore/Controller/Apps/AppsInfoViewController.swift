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
    var results: [Result] = [] {
        didSet{
            collectionView.reloadData()
        }
    }
    var appID: String?{
        didSet{
            guard let id = self.appID else { return }
            fetchData(id: id)
        }
    }
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

// service
extension AppsInfoViewController {
    private func fetchData(id:String) {
        SearchService.fetchDataID(id: id) { result in
            self.results = result
        }
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
        return 2
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseHeaderCellIdentifier, for: indexPath)
        as! AppInfoHeaderCell
        cell.result = self.results.first
        return cell
    }
}

//
extension AppsInfoViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cell = AppInfoHeaderCell(frame: . init(x: 0, y: 0, width: view.frame.width, height: 250))
        cell.result = self.results.first
        cell.layoutIfNeeded()
        let estimatedCell = cell.systemLayoutSizeFitting(.init(width: view.frame.width, height: 1000))
        return .init(width: view.frame.width - 10, height: estimatedCell.height)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 10, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 10)
    }
}
