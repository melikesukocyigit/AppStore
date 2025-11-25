//
//  AppModel.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 25.11.2025.
//

import Foundation


//  API Response
struct AppModel: Codable {
    let feed: Feed
}

struct Feed: Codable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Codable {
    let name: String
    let artistName: String
    let artworkUrl100: String
    let id: String
}

