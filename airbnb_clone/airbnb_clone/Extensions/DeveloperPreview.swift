//
//  DeveloperPreview.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/01/18.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "John Smith",
              ownerImageUrl: "user-1",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 567,
              latitude: 35.69092,
              longitude: 139.70025,
              imageURLs: ["house-1", "bed-1", "kitchen-1", "bath-1", "balcony-1"],
              address: "124 Main St",
              city: "Shinjuku",
              state: "Tokyo",
              title: "Shinjuku Villa",
              rating: 4.86,
              features: [.selfChekIn, .superHost],
              amenities: [ .kitchen, .wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Yamada Taro",
              ownerImageUrl: "user-2",
              numberOfBedrooms: 3,
              numberOfBathrooms: 2,
              numberOfGuests: 3,
              numberOfBeds: 3,
              pricePerNight: 450,
              latitude: 35.6598003,
              longitude: 139.7023894,
              imageURLs: ["house-2", "bed-2", "balcony-2"],
              address: "456 Main St",
              city: "Shibuya",
              state: "Tokyo",
              title: "Shibuya Sky",
              rating: 4.96,
              features: [.selfChekIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry,],
              type: .townHouse
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Aizawa IO",
              ownerImageUrl: "user-1",
              numberOfBedrooms: 0,
              numberOfBathrooms: 0,
              numberOfGuests: 1,
              numberOfBeds: 1,
              pricePerNight: 37,
              latitude: 35.69091,
              longitude: 139.70023,
              imageURLs: ["house-5"],
              address: "124 SubWay",
              city: "新宿西口",
              state: "東京",
              title: "Apart",
              rating: 3.46,
              features: [.selfChekIn],
              amenities: [.alarmSystem],
              type: .apartment
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Bob Johnson",
              ownerImageUrl: "user-3",
              numberOfBedrooms: 9,
              numberOfBathrooms: 2,
              numberOfGuests: 5,
              numberOfBeds: 5,
              pricePerNight: 700,
              latitude: 40.7128,
              longitude: -74.0060,
              imageURLs: ["house-3", "bath-1", "bed-3", "balcony-2"],
              address: "789 Broadway",
              city: "New York",
              state: "New York",
              title: "NYC Penthouse",
              rating: 4.95,
              features: [.selfChekIn, .superHost],
              amenities: [.pool, .wifi, .alarmSystem, .balcony, .laundry, .tv, .office],
              type: .house
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Tanaka",
              ownerImageUrl: "user-4",
              numberOfBedrooms: 1,
              numberOfBathrooms: 0,
              numberOfGuests: 2,
              numberOfBeds: 2,
              pricePerNight: 307,
              latitude: 35.6597653,
              longitude: 139.7023844,
              imageURLs: ["house-4", "kitchen-2"],
              address: "1209 Main St",
              city: "Shibuya",
              state: "Tokyo",
              title: "Shibuya House",
              rating: 4.12,
              features: [.selfChekIn, .superHost],
              amenities: [.kitchen, .laundry, .tv],
              type: .townHouse
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Aizawa IO",
              ownerImageUrl: "user-1",
              numberOfBedrooms: 0,
              numberOfBathrooms: 0,
              numberOfGuests: 1,
              numberOfBeds: 1,
              pricePerNight: 37,
              latitude: 35.69091,
              longitude: 139.70023,
              imageURLs: ["house-5"],
              address: "124 SubWay",
              city: "Shinjuku",
              state: "Tokyo",
              title: "Apart",
              rating: 3.46,
              features: [.selfChekIn],
              amenities: [.alarmSystem],
              type: .apartment
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Aizawa IO",
              ownerImageUrl: "user-1",
              numberOfBedrooms: 0,
              numberOfBathrooms: 0,
              numberOfGuests: 1,
              numberOfBeds: 1,
              pricePerNight: 37,
              latitude: 35.69091,
              longitude: 139.70023,
              imageURLs: ["house-5"],
              address: "124 SubWay",
              city: "新宿",
              state: "東京",
              title: "Apart",
              rating: 3.46,
              features: [.selfChekIn],
              amenities: [.alarmSystem],
              type: .apartment
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Aizawa IO",
              ownerImageUrl: "user-1",
              numberOfBedrooms: 0,
              numberOfBathrooms: 0,
              numberOfGuests: 1,
              numberOfBeds: 1,
              pricePerNight: 37,
              latitude: 35.69091,
              longitude: 139.70023,
              imageURLs: ["house-5"],
              address: "124 SubWay",
              city: "しんじゅく",
              state: "東京",
              title: "Apart",
              rating: 3.46,
              features: [.selfChekIn],
              amenities: [.alarmSystem],
              type: .apartment
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Aizawa IO",
              ownerImageUrl: "user-1",
              numberOfBedrooms: 0,
              numberOfBathrooms: 0,
              numberOfGuests: 1,
              numberOfBeds: 1,
              pricePerNight: 37,
              latitude: 35.69091,
              longitude: 139.70023,
              imageURLs: ["house-5"],
              address: "124 SubWay",
              city: "シンジュク",
              state: "東京",
              title: "Apart",
              rating: 3.46,
              features: [.selfChekIn],
              amenities: [.alarmSystem],
              type: .apartment
             ),
    ]
}
