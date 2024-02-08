//
//  UserService.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/02/07.
//

import Foundation

class UserService {
    func fetchCurrentUser() async throws -> User {
        return User(
            accountType: .guest,
            fullname: "田中 タカヒロ",
            email: "tanaka@g.com",
            profileImageUrl: "user-1"
        )
    }
}
