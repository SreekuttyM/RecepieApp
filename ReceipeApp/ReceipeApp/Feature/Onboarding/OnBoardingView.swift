//
//  OnBoardingView.swift
//  ReceipeApp
//
//  Created by Sreekutty Maya on 21/02/2025.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        ZStack {
            Image(ImageTheme.SplashScreen.rawValue)
                .resizable()
                .ignoresSafeArea()
            VStack {
                VStack {
                    Image(ImageTheme.AppLogo.rawValue)
                        .frame(width: 70,height:70)
                        .padding()
                    Text(CustomString.OBTextPremiumRecepie)
                        .font(Font.customFont(fontType: .bold, size: 15))
                        .foregroundStyle(.white)
                }
                .padding(.top,30)
                    
                Spacer()
                Text(CustomString.OBTextGetCooking)
                    .font(.customFont(fontType: .black, size: 50))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                Text(CustomString.OBTextSimpleWay)
                    .font(.customFont(fontType: .bold, size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .padding(.bottom,50)
                ActionBackgroundButton(title: CustomString.OBButtonSTartShopping, action: {
                    
                }).padding(.bottom,0)
            }
        }
    }
}

#Preview {
    OnBoardingView()
}
