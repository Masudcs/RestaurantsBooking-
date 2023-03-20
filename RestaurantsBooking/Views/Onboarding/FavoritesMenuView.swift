//
//  FavoritesMenuView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/18/23.
//

import SwiftUI

struct FavoritesMenuView: View {
    var body: some View {
        VStack(spacing: 100) {
            Spacer()
            OnboardingView(
                imageName: "Orderillustration",
                title: "Select the Favorites Menu",
                description: "Now eat well, don't leave the house,You can choose your favorite food only with one click"
            )
            
            HStack(spacing: 0) {
                Button {} label: {
                    Text("Skip")
                }
                
                Spacer()
                
                Text("Three dot")
                
                Spacer()
                
                Button {} label: {
                    Label("", systemImage: "arrow.forward")
                }
            }
            .padding(.bottom, 44)
        }
        .padding(.horizontal, 16)
    }
}

struct FavoritesMenuView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesMenuView()
    }
}
