//
//  AppInfoHeaderCellViewModel.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 25.11.2025.
//

import Foundation
struct AppInfoHeaderCellViewModel {
    let result: Result
    init(result: Result) {
        self.result = result
    }
    var name: String? {
        return result.trackName
    }
    var releaseNotes: String? {
        return result.releaseNotes
    }
    var appImageURL: URL? {
        return URL(string: result.artworkUrl100)
    }
    var formattedPrice: String? {
        return result.formattedPrice
    }

}
