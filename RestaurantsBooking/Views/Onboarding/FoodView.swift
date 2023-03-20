//
//  FoodView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/18/23.
//

import SwiftUI

struct FoodView: View {
    var body: some View {
        VStack(spacing: 100) {
            Spacer()
            OnboardingView(
                imageName: "Safe_Food",
                title: "Good food at a cheap price",
                description: "You can eat at expensive restaurants with affordable price"
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
        .padding(.horizontal, 14)
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}
