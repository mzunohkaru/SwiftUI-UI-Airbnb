//
//  AuthService.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/02/07.
//

import Foundation

class AuthService {
    
    @Published var didAuthenticateUser = false
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        didAuthenticateUser = true
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        didAuthenticateUser = true
    }
    
    @MainActor
    func signout() {
        didAuthenticateUser = false
    }
}
