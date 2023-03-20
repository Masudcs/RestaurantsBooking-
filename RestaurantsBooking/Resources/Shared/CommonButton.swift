//
//  CommonButton.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/17/23.
//

import SwiftUI

struct CommonButton: View {
    private var title: String
    private var backgroundColor: Color = .systemGreen
    private var foregroundColor: Color = .systemWhite
    var onClickAction: (() -> Void)?

    init(
        title: String,
        backgroundColor: Color = Color.systemGreen,
        foregroundColor: Color = Color.systemWhite,
        onClickAction: (() -> Void)? = nil
    ) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.onClickAction = onClickAction
    }

    var body: some View {
        VStack {
            Button {} label: {
                HStack {
                    Spacer()
                    
                    Text(title)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(foregroundColor)
                       
                    Spacer()
                }
                .padding(.horizontal, 45)
                .padding(.vertical, 16)
                .background(backgroundColor)
                .cornerRadius(12)
            }
        }
        
    }
}

struct CommonButton_Previews: PreviewProvider {
    static var previews: some View {
        CommonButton(title: "Create Account")
    }
}
