//
//  RTabView.swift
//  ReceipeApp
//
//  Created by Sreekutty Maya on 22/02/2025.
//

import SwiftUI

enum Tab {
    case Home
    case Favorites
    case Profile
}

struct RTabView: View {
    @State var tabSelection : Tab = .Home
    
    var body: some View {
        TabView {
            FeedsView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(1)
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star.fill")
                    
                }
                .tag(2)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                    
                }
                .tag(3)
        }
    }
}

#Preview {
    RTabView()
}
