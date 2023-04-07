//
//  ChangePasswordSuccessView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/22/23.
//

import SwiftUI

struct ChangePasswordSuccessView: View {
    @State private var showSignin: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            CommonSuccessView()
            
            CommonButton(showSheet: $showSignin, title: "Sign in")
                .padding(EdgeInsets(
                    top: 200, leading: 60, bottom: 70, trailing: 60))
        }
    }
}

struct ChangePasswordSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordSuccessView()
    }
}
