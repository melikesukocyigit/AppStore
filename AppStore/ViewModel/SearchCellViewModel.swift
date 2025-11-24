//
//  SearchCellViewModel.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 23.11.2025.
//
import Foundation

struct SearchCellViewModel{
    let result: Result
    init(result: Result) {
        self.result = result
    }
    var ratingLabel: String? {
        return String(format: "%.2f", result.averageUserRating ?? 0)
    }
    var nameLabel: String?{
        return result.trackName
    }
    var categoryLabel: String?{
        return result.primaryGenreName
    }
    var appImage: URL?{
        return URL(string: result.artworkUrl100)
    }
    var screenshot1: URL? {
        // Önce screenshot var mı kontrol et
        guard result.screenshotUrls.count > 0 else { return nil }
        return URL(string: result.screenshotUrls[0])
    }

    var screenshot2: URL? {
        guard result.screenshotUrls.count > 0 else { return nil }

        if result.screenshotUrls.count > 1 {
            return URL(string: result.screenshotUrls[1])
        } else {
            return URL(string: result.screenshotUrls[0])
        }
    }

    var screenshot3: URL? {
        guard result.screenshotUrls.count > 0 else { return nil }

        if result.screenshotUrls.count > 2 {
            return URL(string: result.screenshotUrls[2])
        } else {
            return URL(string: result.screenshotUrls[0])
        }
    }
    
}
