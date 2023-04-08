//
//  LoginView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/20/23.
//

import SwiftUI

struct LoginView: View {
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    @State private var showRegistration: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Email address")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.secondaryLabel)
            
                CommonTextField(textField: $emailAddress, placeholder: "Enter email address")
                    .padding(.bottom, 10)
            
                Text("Password")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.secondaryLabel)
            
                CommonTextField(textField: $password, placeholder: "Enter password")
            
                HStack(spacing: 0) {
                    Spacer()
                
                    Button {} label: {
                        Text("Forget Password?")
                    }
                }
                .padding(.bottom, 30)
                .padding(.trailing, 10)
            }
            
            VStack(spacing: 16) {
                CommonButton(showSheet: $showRegistration,
                             title: "Login",
                             backgroundColor: Color.systemGroupedBackground,
                             foregroundColor: Color.label)
                    .padding(.horizontal, 20)
                
                CommonButtonWithIcon(title: "Sign up with Google", backgroundColor: Color.systemGroupedBackground, foregroundColor: Color.label)
            }
            .padding(.horizontal, 40)
        }
        .padding(.horizontal, 16)
        .accentColor(Color.systemGreen)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
