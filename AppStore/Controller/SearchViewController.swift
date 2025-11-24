//
//  SearchViewController.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 21.11.2025.
//
import UIKit
private let reuseIdentifier = "SearchCell"
class SearchViewController: UICollectionViewController {
    //Properties
    var searchResults: [Result] = []{
        didSet {
            collectionView.reloadData()
        }
    }
    private let centerLabel: UILabel = {
         let label = UILabel()
          label.text = "Enter the name of the application you are looking for.."
          label.textAlignment = .center
          label.numberOfLines = 0
          return label
      }()
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

extension SearchViewController {
    
    private func style() {
        collectionView.register(SearchCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        let searchController = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.delegate = self
        centerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    private func layout() {
        view.addSubview(centerLabel)
        NSLayoutConstraint.activate([
            centerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            centerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            view.trailingAnchor.constraint(equalTo: centerLabel.trailingAnchor,constant: 32)
            
            ])
    }
}
// UICollectionViewDataSource
extension SearchViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        centerLabel.isHidden = self.searchResults.count != 0
        /*return 5*/ // 5 tane hücre olmasını istiyorum
        return searchResults.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SearchCell
        cell.result = self.searchResults[indexPath.row]
        return cell
    }
}
// UICollectionViewDelegateFlowLayout
extension SearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 250)
    }
    //searchbarla altındaki collectiıonviewdakiler birbirine çok yakındı uzaklaştırdık
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: 0,  height: 10)
    }
}

// UISearchBarDelegate
extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        /*print(searchText)*/ // her yazdığımızı yazdıracak konsolda
        SearchService.fetchData(searchtext: searchText) { results in
            self.searchResults = results
        }
    }
}
