//
//  View+EXT.swift
//  ReceipeApp
//
//  Created by Sreekutty Maya on 21/02/2025.
//

import SwiftUI


extension View {
    func actionToCallButton() -> some View {
        self.padding()
            .font(.customFont(fontType: .bold, size: 16))
            .foregroundStyle(.white)
            .background(.accent)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    func centreAligmentMultilineText(font : Font) -> some View {
        self.font(font)
        .foregroundStyle(.white)
        .multilineTextAlignment(.center)
        .padding()
    }
    
    
}
