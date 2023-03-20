//
//  ContentView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            OnboardingView(imageName: "Tracking_Map", title: "Nearby restaurants", description: "You don't have to go far to find a good restaurant,we have provided all the restaurants that is near you")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
