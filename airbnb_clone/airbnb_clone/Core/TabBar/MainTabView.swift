//
//  MainTabView.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/01/18.
//

import SwiftUI

struct MainTabView: View {
    private let service: AuthService
    @EnvironmentObject var contentViewModel: ContentViewModel
    
    init(service: AuthService) {
        self.service = service
    }
    
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistsView(service: AuthService())
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileView(service: service, user: contentViewModel.currentUser)
                .tabItem { Label("Profile", systemImage: "person.circle") }
        }
    }
}

#Preview {
    MainTabView(service: AuthService())
}
