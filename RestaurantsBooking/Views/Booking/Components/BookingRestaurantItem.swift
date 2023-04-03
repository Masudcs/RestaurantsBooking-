//
//  BookingRestaurantItem.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 4/2/23.
//

import SwiftUI

struct BookingRestaurantItem: View {
    private var imageName: String
    private var restaurantName: String
    private var restaurantLocation: String
    
    init(
        imageName: String,
        restaurantName: String,
        restaurantLocation: String
    ) {
        self.imageName = imageName
        self.restaurantName = restaurantName
        self.restaurantLocation = restaurantLocation
    }
    
    var body: some View {
        HStack(spacing: 15) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(restaurantName)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color.label)
                    .lineLimit(1)
                
                HStack {
                    Image("Map_Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    Text(restaurantLocation)
                        .font(.system(size: 10, weight: .regular))
                        .foregroundColor(Color.label.opacity(0.80))
                        .lineLimit(2)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Book")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundColor(Color.systemWhite)
                            .padding(.horizontal, 30)
                            .padding(.vertical, 6)
                            .background(Color.systemGreen)
                            .cornerRadius(6)
                        
                    }
                    .padding(.leading, 6)


                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding([.horizontal, .vertical], 12)
        .background(Color.secondarySystemGroupedBackground)
        .cornerRadius(10)
    }
}

struct BookingRestaurantItem_Previews: PreviewProvider {
    static var previews: some View {
        BookingRestaurantItem(
            imageName: "Inside_Restaurant_Image",
            restaurantName: "Hotel Zaman Restaurant",
            restaurantLocation: "kazi Deiry, Taiger Pass Chittagong"
        )
    }
}
