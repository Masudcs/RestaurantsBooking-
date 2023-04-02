//
//  EmailSuccessView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/22/23.
//

import SwiftUI

struct EmailSuccessView: View {
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            CommonSuccessView()
                .padding(.bottom, 30)
            
            HStack(spacing: 6) {
                Text("Can't get email?")
                    .font(.system(size: 16, weight: .bold))
                    .padding(.bottom, 8)
                    .foregroundColor(Color.label)
                
                Button {
                    
                } label: {
                    Text("Resubmit.")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.bottom, 8)
                       
                }

            }
            
            CommonButton(title: "Back Email")
                .padding(EdgeInsets(
                    top: 140, leading: 60, bottom: 70, trailing: 60))
        }
        .accentColor(Color.systemGreen)
    }
}

struct EmailSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        EmailSuccessView()
    }
}
