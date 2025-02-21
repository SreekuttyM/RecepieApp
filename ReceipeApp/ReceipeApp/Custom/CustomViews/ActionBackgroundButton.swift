//
//  ActionBackgroundButton.swift
//  ReceipeApp
//
//  Created by Sreekutty Maya on 21/02/2025.
//

import SwiftUI

struct ActionBackgroundButton: View {
    var title : String
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .padding()
                .font(.customFont(fontType: .bold, size: 16))
                .foregroundStyle(.white)
                .background(.accent)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
        }.padding(.bottom,70)
    }
}

#Preview {
    ActionBackgroundButton(title: "Start") {
        
    }
}
