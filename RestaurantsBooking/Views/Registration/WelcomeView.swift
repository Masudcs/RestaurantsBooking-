//
//  WelcomeView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/20/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 16) {
            OnboardingView(
                imageName: "Order_Success",
                title: "Welcome",
                description: "Before enjoying Foodmedia services. Please register first."
            )
            .padding(.bottom, 80)
            
            CommonButton(title: "Create Account")
                .padding(.horizontal, 10)
            
            CommonButton(
                title: "Login",
                backgroundColor: Color.systemGreen.opacity(0.25),
                foregroundColor: Color.systemGreen
            )
            .padding(.horizontal, 10)
            
            Text("By logging in or registering, you have agreed to [The Terms And Conditions](https://example.com) And [Privacy Policy.](https://example.com)")
                .font(.system(size: 10, weight: .regular))
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 16)
        .accentColor(Color.systemGreen)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
