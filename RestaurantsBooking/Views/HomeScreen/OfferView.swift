//
//  OfferView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 4/3/23.
//

import SwiftUI

struct OfferView: View {
    @State var tabIndex = 0
    
    var body: some View {
        VStack(spacing: 18) {
            TabView(selection: $tabIndex) {
                OfferItem(
                    iconName: "Burger_Icon",
                    imageName: "Burgers",
                    offerTitle: "Flash Order",
                    offerDescription: "We are here with the bestdeserts in town."
                )
                OfferItem(
                    backgroundColor: Color.systemGreen,
                    iconName: "Pizza_Icon",
                    imageName: "Pizza",
                    offerTitle: "New Arrival",
                    offerDescription: "We are here with the bestdeserts in town."
                )
                OfferItem(
                    backgroundColor: Color.systemGreen,
                    iconName: "Pizza_Icon",
                    imageName: "Pizza",
                    offerTitle: "New Arrival",
                    offerDescription: "We are here with the bestdeserts in town."
                )
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack {
                Circle()
                    .fill(.green)
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(.green)
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(.green)
                    .frame(width: 8, height: 8)
            }
            
            
        }
        .frame(height: 180)
        
       // .background(.red)
        .cornerRadius(12)
    }
}

struct OfferView_Previews: PreviewProvider {
    static var previews: some View {
        OfferView()
    }
}
