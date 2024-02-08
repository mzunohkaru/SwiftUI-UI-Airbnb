//
//  ExploreView.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/01/18.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    @State private var showMapView = false
    
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSerachView(show: $showDestinationSearchView,
                                      viewModel: viewModel)
            } else {
                ZStack(alignment: .bottom) {
                    VStack {
                        SearchAndFilterBar(location: $viewModel.searchLocation)
                            .onTapGesture {
                                withAnimation(.snappy) {
                                    showDestinationSearchView.toggle()
                                }
                            }
                        
                        ScrollView {
                            LazyVStack(spacing: 32) {
                                ForEach(viewModel.listings) { listing in
                                    NavigationLink(value: listing) {
                                        ListingItemView(listing: listing)
                                            .frame(height: 400)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                    }
                                }
                                .padding()
                            }
                            .navigationDestination(for: Listing.self) { listing in
                                ListingDetailView(listing: listing)
                                    .navigationBarBackButtonHidden()
                            }
                        }
                    }
                    Button {
                        showMapView.toggle()
                    } label: {
                        HStack {
                            Text("Map")
                            
                            Image(systemName: "paperplane")
                        }
                        .foregroundColor(.white)
                        .padding(.vertical, 12)
                        .padding(.horizontal)
                        .background(.black)
                        .clipShape(Capsule())
                        .padding()
                    }
                }
                .sheet(isPresented: $showMapView, content: {
                    LisitingMapView(listings: viewModel.listings)
                })
            }
        }
    }
}

#Preview {
    ExploreView()
}
