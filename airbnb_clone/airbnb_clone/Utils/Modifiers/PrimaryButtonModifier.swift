//
//  PrimaryButtonModifier.swift
//  airbnb_clone
//
//  Created by Mizuno Hikaru on 2024/02/07.
//

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .foregroundStyle(.white)
            .frame(width: 350, height: 40)
            .background(Color(.systemPink))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
