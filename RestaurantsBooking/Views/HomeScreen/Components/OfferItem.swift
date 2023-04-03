//
//  OfferItem.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/23/23.
//

import SwiftUI

struct OfferItem: View {
    private var backgroundColor: Color = .systemYellow
    private var iconName: String
    private var imageName: String
    private var offerTitle: String
    private var offerDescription: String

    init(
        backgroundColor: Color = Color.systemYellow,
        iconName: String,
        imageName: String,
        offerTitle: String,
        offerDescription: String
    ) {
        self.backgroundColor = backgroundColor
        self.iconName = iconName
        self.imageName = imageName
        self.offerTitle = offerTitle
        self.offerDescription = offerDescription
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Image(iconName)
                    .resizable()
                    .frame(width: 44, height: 26)
                    .cornerRadius(5)
                    .padding(.bottom, 12)
                    .accessibilityLabel(imageName)
                    .accessibilityRemoveTraits(.isImage)
                    .accessibilityAddTraits(.isHeader)

                VStack(alignment: .leading, spacing: 3) {
                    Text(offerTitle)
                        .font(.system(size: 16, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.systemWhite)

                    Text(offerDescription)
                        .font(.system(size: 7, weight: .medium))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.systemWhite)

                    Button {
                        // action
                    } label: {
                        HStack(spacing: 6) {
                            Text("Order")
                                .font(.system(size: 7, weight: .medium))
                                .lineLimit(1)
                                .foregroundColor(Color.systemWhite)
                            Image(systemName: "right.cevron")
                        }
                    }
                }
            }
            .padding(EdgeInsets(
                top: 0,
                leading: 10,
                bottom: 20,
                trailing: 80
            ))

            HStack {
                Image(imageName)
                    .resizable()
                    .frame(height: 150)
            }
            .accessibilityHidden(true)
        }
        .background(backgroundColor)
        .cornerRadius(12)
    }
}

struct OfferItem_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            OfferItem(
                iconName: "Burger_Icon",
                imageName: "Burgers",
                offerTitle: "Flash Order",
                offerDescription: "We are here with the bestdeserts in town."
            )
            
            OfferItem(
                backgroundColor: Color.systemGreen,
                iconName: "Pizza_Icon",
                imageName: "Pizza",
                offerTitle: "New Arrival",
                offerDescription: "We are here with the bestdeserts in town."
            )
        }
    }
}
