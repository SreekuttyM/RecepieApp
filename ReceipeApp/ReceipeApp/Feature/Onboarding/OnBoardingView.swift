//
//  OnBoardingView.swift
//  ReceipeApp
//
//  Created by Sreekutty Maya on 21/02/2025.
//

import SwiftUI

struct OnBoardingView: View {
    @EnvironmentObject var appstate: AppState

    var body: some View {
        ZStack {
            Image(ImageTheme.splashScreen.rawValue)
                .resizable()
                .ignoresSafeArea()
            VStack {
                headerSection
                .padding(.top,30)
                Spacer()
                middleSection
                Button {
                    startShoppingPressed()
                } label: {
                    Text(CustomString.OBButtonSTartShopping)
                        .actionToCallButton()
                }
                .padding(.bottom,50)
            }
        }
    }
    
    private func startShoppingPressed() {
        appstate.updateViewState(showTabBarView: true)
     }
    
    private var headerSection : some View {
        VStack {
            Image(ImageTheme.appLogo.rawValue)
                .frame(width: 70,height:70)
                .padding(.bottom,10)
            Text(CustomString.OBTextPremiumRecepie)
                .centreAligmentMultilineText(font: .customFont(fontType: .bold, size: 15))
        }
    }
    
    private var middleSection : some View {
        VStack {
            Text(CustomString.OBTextGetCooking)
                .centreAligmentMultilineText(font: .customFont(fontType: .black, size: 50))
                .padding(.bottom,5)
            Text(CustomString.OBTextSimpleWay)
                .centreAligmentMultilineText(font: .customFont(fontType: .bold, size: 16))
                
        }.padding(.bottom,50)
    }
}

#Preview {
    OnBoardingView()
}
