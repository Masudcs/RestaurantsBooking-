//
//  CreateAccountView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/20/23.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var fullName: String = ""
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    @State private var showRegistration: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
        VStack(alignment: .leading, spacing: 10) {
            Text("Create Account")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color.label)
                .padding(.top, 20)
            Text("Please enter name, email and password to create account.")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color.label)
                .padding(.bottom, 40)
            
            Text("Full Name")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.label)
            
            CommonTextField(textField: $fullName)
                .padding(.bottom, 10)
            
            Text("Email address")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.label)
            
            CommonTextField(textField: $emailAddress, placeholder: "Enter email address")
                .padding(.bottom, 10)
            
            Text("Password")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.label)
            
            CommonTextField(textField: $password, placeholder: "Enter password")
                .padding(.bottom, 34)
        }
            Spacer()
            
            VStack(spacing: 20) {
                CommonButton(showSheet: $showRegistration, title: "Registration")
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
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
