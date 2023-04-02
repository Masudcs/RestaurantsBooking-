//
//  CommonSuccessView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/21/23.
//

import SwiftUI

struct CommonSuccessView: View {
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 82))
                .foregroundColor(Color.systemGreen)
                .padding(.bottom, 30)
            
            Text("Success")
                .font(.system(size: 24, weight: .bold))
                .padding(.bottom, 8)
                .foregroundColor(Color.label)
            
            Text("Please check your email for create a new password")
                .font(.system(size: 16, weight: .medium))
                .padding(.bottom, 8)
                .foregroundColor(Color.secondaryLabel)

                
        }
        .accentColor(Color.systemGreen)
    }
}

struct CommonSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        CommonSuccessView()
    }
}
