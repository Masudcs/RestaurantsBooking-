//
//  OnboardingScreen.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 4/5/23.
//

import SwiftUI

struct OnboardingScreen: View {
    @State var tabIndex = 0
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $tabIndex) {
                NearbyRestaurantsView()
                    .tag(0)
                FavoritesMenuView()
                    .tag(1)
                FoodView()
                    .tag(2)
                WelcomeView()
                    .tag(3)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            if tabIndex != 3 {
                Spacer()
                
                HStack(spacing: 0) {
                    Button {
                        tabIndex = 3
                    } label: {
                        Text("Skip")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(Color.secondaryLabel)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Circle()
                            .fill(tabIndex == 0 ? Color.systemGreen : Color.secondaryLabel.opacity(0.65))
                            .frame(width: 8, height: 8)
                        
                        Circle()
                            .fill(tabIndex == 1 ? Color.systemGreen : Color.secondaryLabel.opacity(0.65))
                            .frame(width: 8, height: 8)
                        
                        Circle()
                            .fill(tabIndex == 2 ? Color.systemGreen : Color.secondaryLabel.opacity(0.65))
                            .frame(width: 8, height: 8)
                    }
                    
                    Spacer()
                    
                    Button {
                        tabIndex += 1
                    } label: {
                        Image(systemName: "arrow.forward")
                            .foregroundColor(Color.systemGreen)
                            .font(.system(size: 16, weight: .regular))
                    }
                }
                .padding(.bottom, 44)
                .padding(.horizontal, 16)
            }
        }
        .background(Color.systemGroupedBackground)
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
