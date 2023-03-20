//
//  NearbyRestaurantsView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/18/23.
//

import SwiftUI

struct NearbyRestaurantsView: View {
    var body: some View {
        VStack(spacing: 100) {
            Spacer()
            OnboardingView(
                imageName: "Tracking_Map",
                title: "Nearby restaurants",
                description: "You don't have to go far to find a good restaurant,we have provided all the restaurants that is near you"
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

struct NearbyRestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        NearbyRestaurantsView()
    }
}
