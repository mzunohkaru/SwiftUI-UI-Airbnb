//
//  LoginViewModel.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/02/07.
//

import Foundation

@MainActor
class LoginViewModel: ObservableObject {
    
    @Published var showAlert = false
    @Published var authError: AuthError?
    @Published var isAuthenticating = false
    @Published var email = ""
    @Published var password = ""
    
    private let service: AuthService
    
    init(service: AuthService) {
        self.service = service
    }
    
    func login() async {
        isAuthenticating = true
        
        do {
            try await service.login(withEmail: email, password: password)
            isAuthenticating = false
        } catch {
            self.showAlert = true
            isAuthenticating = false
            self.authError = AuthError.invalidEmail
        }
    }
}
