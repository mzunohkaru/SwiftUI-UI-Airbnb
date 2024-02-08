//
//  User.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/02/07.
//

import Foundation

struct User: Identifiable, Codable {
    var id = NSUUID().uuidString
    var accountType: AccountType
    let fullname: String
    let email: String
    let profileImageUrl: String
}

enum AccountType: Int, Codable {
    case host
    case guest
    
    var description: String {
        switch self {
        case .host: return "Host"
        case .guest: return "Guest"
        }
    }
}
