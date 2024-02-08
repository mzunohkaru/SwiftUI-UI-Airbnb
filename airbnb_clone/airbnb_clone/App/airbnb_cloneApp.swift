//
//  airbnb_cloneApp.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/01/18.
//

import SwiftUI

@main
struct airbnb_cloneApp: App {
    
    let authService = AuthService()
    let userService = UserService()
    
    var body: some Scene {
        WindowGroup {
            ContentView(authService: authService, userService: userService)
        }
    }
}
