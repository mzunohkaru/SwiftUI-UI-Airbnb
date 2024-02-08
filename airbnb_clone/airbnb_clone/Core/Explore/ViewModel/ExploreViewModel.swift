//
//  ExploreViewModel.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/01/18.
//

import Foundation

@MainActor
class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            let fetchedListings = try await service.fetchListings()
            DispatchQueue.main.async {
                self.listings = fetchedListings
                self.listingsCopy = fetchedListings
            }
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        /// 完全一致検索
        /*
        let filterdListings = listings.filter({
            // $0 : listings.filter({})の中で、listings配列の現在処理している各要素を参照します。
            // lowercased() : 小文字に変換
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
         */
        
        /// 部分一致検索
        let filterdListings = listings.filter({
            $0.city.lowercased().contains(searchLocation.lowercased()) ||
            $0.state.lowercased().contains(searchLocation.lowercased())
        })
        
        print("DEBUG: \(filterdListings)")
        
        // 検索の結果でデータがない場合は、すべてのデータを返す
        self.listings = filterdListings.isEmpty ? listingsCopy : filterdListings
    }
}
