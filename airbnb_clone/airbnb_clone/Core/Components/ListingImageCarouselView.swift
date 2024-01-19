//
//  ListingImageCarouselView.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/01/18.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    let listing: Listing
    
    var body: some View {
        // images
        TabView{
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
