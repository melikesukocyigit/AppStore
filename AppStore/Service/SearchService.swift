//
//  SearchService.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 22.11.2025.
//

import Foundation
import Alamofire
struct SearchService {
    static func fetchData(searchtext term: String , completion: @escaping ([Result]) -> Void) {
        let baseUrl = "https://itunes.apple.com/search"
        let parameters = ["entity":"software" ,"term":term]
        AF.request(baseUrl,method: .get,parameters: parameters).responseData {
            reponseData in
            if let error = reponseData.error {
                print(error)
            }
            
            guard let data = reponseData.data else { return }
            do{
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                completion(searchResult.results)
            }catch let error{
                print(error.localizedDescription)
            }
        }
    }
}
