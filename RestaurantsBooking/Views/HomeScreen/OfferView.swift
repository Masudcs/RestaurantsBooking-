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
                .tag(0)
                OfferItem(
                    backgroundColor: Color.systemGreen,
                    iconName: "Pizza_Icon",
                    imageName: "Pizza",
                    offerTitle: "New Arrival",
                    offerDescription: "We are here with the bestdeserts in town."
                )
                .tag(1)
                OfferItem(
                    backgroundColor: Color.systemGreen,
                    iconName: "Pizza_Icon",
                    imageName: "Pizza",
                    offerTitle: "New Arrival",
                    offerDescription: "We are here with the bestdeserts in town."
                )
                .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack {
                Circle()
                    .fill(tabIndex == 0 ? Color.systemGreen : Color.systemWhite)
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(tabIndex == 1 ? Color.systemGreen : Color.systemWhite)
                    .frame(width: 8, height: 8)
                
                Circle()
                    .fill(tabIndex == 2 ? Color.systemGreen : Color.systemWhite)
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
