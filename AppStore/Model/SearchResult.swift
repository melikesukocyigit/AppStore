//
//  SearchResult.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 22.11.2025.
//

import Foundation
struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let primaryGenreName: String
    let artworkUrl100: String
    let trackName: String
    let screenshotUrls: [String]
    let averageUserRating: Float?
}
