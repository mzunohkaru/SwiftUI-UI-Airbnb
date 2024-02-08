//
//  AuthError.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/02/07.
//

import Foundation

enum AuthError: Error {
    case invalidEmail
    case invalidPassword
    case userNotFound
    case weakPassword
    case unknown
}
