//
//  AppCellDetailCellViewModel.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 25.11.2025.
//

import Foundation
struct AppCellDetailCellViewModel {
    let result: FeedResult
    init(result: FeedResult) {
        self.result = result
    }
    var appImageUrl: URL? {
        return URL(string: result.artworkUrl100)
    }
    var artistName: String {
        return result.artistName
    }
    var name: String {
        return result.name
    }
}
