//
//  NewArivalItemView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 4/1/23.
//

import SwiftUI

struct NewArivalItemView: View {
    private var imageName: String
    private var itemName: String
    private var restaurantName: String
    
    init(
        imageName: String,
        itemName: String,
        restaurantName: String
    ) {
        self.imageName = imageName
        self.itemName = itemName
        self.restaurantName = restaurantName
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .cornerRadius(8)
                    .padding(.bottom, 15)
                
                Text(itemName)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color.label)
                    .lineLimit(1)
                    .padding(.bottom, 4)
            }
            .accessibilityElement(children: .combine)
            
            Button {
                //Need action
            } label: {
                HStack(alignment: .top) {
                    Image("Map_Icon")
                        .resizable()
                        .frame(width: 7, height: 10)
                        
                    
                    Text(restaurantName)
                        .font(.system(size: 10, weight: .medium))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.label)
                        
                }
            }
        }
        .accessibilityElement(children: .contain)
        .frame(width: 130)
        .padding(EdgeInsets(
            top: 10,
            leading: 10,
            
            bottom: 20, trailing: 10
        ))
        .background(Color.secondarySystemGroupedBackground)
        .cornerRadius(16)
    }
}

struct NewArivalItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewArivalItemView(
            imageName: "Chicken_Image",
            itemName: "Chicken Biryani",
            restaurantName: "Ambrosia Hotel & Restaurant"
        )
    }
}
