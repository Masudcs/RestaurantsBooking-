//
//  ForgetPasswordView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/21/23.
//

import SwiftUI

struct ForgetPasswordView: View {
    @State private var emailAddress: String = ""
    @State private var showSuccessView: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
                .frame(height: 80)
            Text("Forget Password")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color.label)
                .padding(.bottom, 6)
            
            Text("Enter your registered email below")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Color.secondaryLabel)
                .padding(.bottom, 56)
            
            Text("Email address")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.label)
                .padding(.bottom, 6)
            
            CommonTextField(textField: $emailAddress, placeholder: "Enter email address")
                .padding(.bottom, 16)
            
            HStack(spacing: 6) {
                Text("Remember the password?")
                
                Button {
                    
                } label: {
                    Text("Sign in")
                }

            }
            
            Spacer()
            
            CommonButton(showSheet: $showSuccessView, title: "Submit")
                .padding(.horizontal, 25)
                .padding(.bottom, 30)

        }
        .padding(.horizontal, 16)
    }
}

struct ForgetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPasswordView()
    }
}
