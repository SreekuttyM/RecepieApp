//
//  ContentView.swift
//  ReceipeApp
//
//  Created by Sreekutty Maya on 20/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.custom("Poppins-Bold", size: 30))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
