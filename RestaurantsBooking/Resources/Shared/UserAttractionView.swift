//
//  UserAttractionView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/16/23.
//

import SwiftUI

struct UserAttractionView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image("Tracking_Map")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 50)
            
            Text("Nearby restaurants")
                .font(.system(size: 24, weight: .semibold))
                .padding(.bottom, 16)
            
            Text("You don't have to go far to find a good restaurant,we have provided all the restaurants that is near you")
                .multilineTextAlignment(.center)
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color.secondary)
        }
    }
}

struct UserAttractionView_Previews: PreviewProvider {
    static var previews: some View {
        UserAttractionView()
    }
}
