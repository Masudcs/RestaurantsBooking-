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
    
    var body: some View {
        VStack(spacing: 0) {
        VStack(alignment: .leading, spacing: 10) {
            Text("Full Name")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.secondaryLabel)
            
            CommonTextField(textField: $fullName)
                .padding(.bottom, 10)
            
            Text("Email address")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.secondaryLabel)
            
            CommonTextField(textField: $emailAddress, placeholder: "Enter email address")
                .padding(.bottom, 10)
            
            Text("Password")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.secondaryLabel)
            
            CommonTextField(textField: $password, placeholder: "Enter password")
                .padding(.bottom, 34)
        }
            
            VStack(spacing: 16) {
                CommonButton(title: "Registration")
                    .padding(.horizontal, 20)
                
                CommonButtonWithIcon(title: "Sign up with Google", backgroundColor: Color.systemGroupedBackground, foregroundColor: Color.label)
            }
            .padding(.horizontal, 40)
            
        }
        .padding(.horizontal, 16)
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
