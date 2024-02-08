//
//  PrimaryTextFieldModifier.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/02/07.
//

import SwiftUI

struct PrimaryTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}
