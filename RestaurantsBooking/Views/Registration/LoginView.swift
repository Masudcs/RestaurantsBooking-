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
                Text("Login")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Color.label)
                    .padding(.top, 20)
                Text("Please enter email and password to login.")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(Color.label)
                    .padding(.bottom, 40)
                
                Text("Email address")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.label)
            
                CommonTextField(textField: $emailAddress, placeholder: "Enter email address")
                    .padding(.bottom, 10)
            
                Text("Password")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.label)
            
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
            
            Spacer()
            
            VStack(spacing: 20) {
                CommonButton(showSheet: $showRegistration,
                             title: "Login",
                             backgroundColor: Color.systemGroupedBackground,
                             foregroundColor: Color.label)
                    .padding(.horizontal, 20)
                HStack {
                    Rectangle()
                        .frame(width: 100, height: 1)
                        .foregroundColor(Color.secondaryLabel)
                    
                    Text("OR")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color.label)
                    
                    Rectangle()
                        .frame(width: 100, height: 1)
                        .foregroundColor(Color.secondaryLabel)
                }
                
                CommonButtonWithIcon(title: "Sign up with Google", backgroundColor: Color.systemGroupedBackground, foregroundColor: Color.label)
            }
            .padding(.horizontal, 40)
            
            Spacer()
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
