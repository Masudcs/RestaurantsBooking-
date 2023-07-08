//
//  BookingHistoryView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 5/4/23.
//

import SwiftUI

struct BookingHistoryView: View {
    var body: some View {
        VStack {
            ForEach(1 ..< 10) { _ in
                BookingRestaurantItem(
                    buttonName: "Check",
                    imageName: "Inside_Restaurant_Image",
                    restaurantName: "Hotel Zaman Restaurant",
                    restaurantLocation: "kazi Deiry, Taiger Pass Chittagong"
                )
            }
        }
    }
}

struct BookingHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        BookingHistoryView()
    }
}
