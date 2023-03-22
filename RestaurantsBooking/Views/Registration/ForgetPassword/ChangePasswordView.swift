//
//  ChangePasswordView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/21/23.
//

import SwiftUI

struct ChangePasswordView: View {
    @State private var newPassword: String = ""
    @State private var confarmPassword: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
                .frame(height: 80)
            Text("Change New Password")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color.label)
                .padding(.bottom, 6)
            
            Text("Enter your registered email below")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Color.secondaryLabel)
                .padding(.bottom, 56)
            Group {
                Text("New Password")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.label)
                    .padding(.bottom, 6)
                
                CommonTextField(textField: $newPassword, placeholder: "Enter new password")
                    .padding(.bottom, 16)
                
                Text("Confarm Password")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.label)
                    .padding(.bottom, 6)
                
                CommonTextField(textField: $confarmPassword, placeholder: "Enter above new password")
                    .padding(.bottom, 16)
            }
            
            Spacer()
            
            CommonButton(title: "Submit")
                .padding(.horizontal, 25)
                .padding(.bottom, 30)
        }
        .padding(.horizontal, 16)
    }
}

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}
