//
//  RAppView.swift
//  ReceipeApp
//
//  Created by Sreekutty Maya on 21/02/2025.
//

import SwiftUI

struct RAppView: View {
    @StateObject var appState: AppState = AppState()
   
    var body: some View {
        
        RAppViewBuilder(
            showTabBar: appState.showTabBar,
            tabbarView: {
                RTabView()
            },
            onBoardingView: {
                OnBoardingView()
            }
        )
        .environmentObject(appState)

    }
}

#Preview {
    RAppView(appState: AppState(showTabBar: true))
}

#Preview {
    RAppView(appState: AppState(showTabBar: false))
}
