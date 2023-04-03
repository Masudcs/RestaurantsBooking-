//
//  HomeScreen.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 4/2/23.
//

import SwiftUI

struct HomeScreen: View {
    @State var searchText: String = ""
    @State var showAllNewArivalItem: Bool = false
    @State var showBookingRestaruant: Bool = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    OfferView()
                        .padding(.bottom, 30)
                    
                    SeeAllItem(
                        showAll: $showAllNewArivalItem,
                        title: "Today New Arivable",
                        comment: "Best of the today  food list update"
                    )
                    .padding(.bottom, 16)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<4) { _ in
                                NewArivalItemView(
                                    imageName: "Chicken_Image",
                                    itemName: "Chicken Biryani",
                                    restaurantName: "Ambrosia Hotel & Restaurant"
                                )
                            }
                        }
                    }
                    .padding(.bottom, 30)
                    
                    SeeAllItem(
                        showAll: $showBookingRestaruant,
                        title: "Booking Restaurant",
                        comment: "Check your city Near by Restaurant"
                    )
                    .padding(.bottom, 16)
                    
                    ForEach(0..<4) { _ in
                        BookingRestaurantItem(
                            imageName: "Inside_Restaurant_Image",
                            restaurantName: "Hotel Zaman Restaurant",
                            restaurantLocation: "kazi Deiry, Taiger Pass Chittagong"
                        )
                    }
                    
                }
                .padding(.horizontal, 15)
                .searchable(text: $searchText, prompt: "Search")
            }
            .background(Color.systemGroupedBackground)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
