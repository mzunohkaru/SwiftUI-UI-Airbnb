//
//  ExploreService.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/01/18.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
