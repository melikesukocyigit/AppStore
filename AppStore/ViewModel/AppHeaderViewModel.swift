//
//  AppHeaderViewModel.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 25.11.2025.
//

import Foundation

struct AppHeaderViewModel {
    let result: AppHeaderModel
    init(result: AppHeaderModel) {
        self.result = result
    }
    var imageURL: URL? {
        return URL(string: result.imageUrl)
    }
    var title: String {
        return result.title
    }
    var id: String {
        return result.id
    }
    var name: String {
        return result.name
    }
}
