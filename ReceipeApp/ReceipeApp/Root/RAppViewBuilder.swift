//
//  RAppViewBuilder.swift
//  ReceipeApp
//
//  Created by Sreekutty Maya on 21/02/2025.
//

import SwiftUI

struct RAppViewBuilder<TabbarView: View, OnboardingView: View>: View {
    var showTabBar: Bool = false
    @ViewBuilder var tabbarView: TabbarView
    @ViewBuilder var onBoardingView: OnboardingView

    var body: some View {
        ZStack {
            if showTabBar {
                tabbarView
            } else {
                onBoardingView
            }

        }
    }
}
#Preview {
    RAppViewBuilder(showTabBar: false) {
        ZStack {
            Color.red
        }
    } onBoardingView: {
        ZStack {
            Color.yellow
        }
    }

}
