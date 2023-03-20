//
//  CommonButtonWithIcon.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/18/23.
//

import SwiftUI

struct CommonButtonWithIcon: View {
    private var iconName: String = "Goolge_Icon"
    private var title: String
    private var backgroundColor: Color = .systemGreen
    private var foregroundColor: Color = .systemWhite
    var onClickAction: (() -> Void)?

    init(
        iconName: String = "Goolge_Icon",
        title: String ,
        backgroundColor: Color = Color.systemGreen,
        foregroundColor: Color = Color.systemWhite,
        onClickAction: (() -> Void)? = nil
    ) {
        self.iconName = iconName
        self.title = title
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.onClickAction = onClickAction
    }

    var body: some View {
        HStack(spacing: 24) {
            
            Image("Google_Icon")
            
            Button {} label: {
                Text(title)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(foregroundColor)
            }
            
        }
        .padding(.horizontal, 45)
        .padding(.vertical, 16)
        .background(backgroundColor)
        .cornerRadius(12)
    }
}

struct CommonButtonWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        CommonButtonWithIcon(title: "Login with Google")
    }
}
