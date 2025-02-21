//
//  RAppView.swift
//  ReceipeApp
//
//  Created by Sreekutty Maya on 21/02/2025.
//

import SwiftUI

struct RAppView: View {
    @AppStorage("showTabbarView") var showTabBar: Bool = false
    var body: some View {
        RAppViewBuilder(
            showTabBar: showTabBar,
            tabbarView: {
                ZStack {
                    Color.red
                    Text("AB")
                }
            }, onBoardingView: {
                OnBoardingView()
            }
        ).onTapGesture {
            showTabBar.toggle()
        }

    }
}

#Preview {
    RAppView()
}
