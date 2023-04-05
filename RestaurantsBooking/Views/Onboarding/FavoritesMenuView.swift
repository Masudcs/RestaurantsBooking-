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
            OnboardingView(
                imageName: "Orderillustration",
                title: "Select the Favorites Menu",
                description: "Now eat well, don't leave the house,You can choose your favorite food only with one click"
            )
        }
        .padding(.horizontal, 16)
    }
}

struct FavoritesMenuView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesMenuView()
    }
}
