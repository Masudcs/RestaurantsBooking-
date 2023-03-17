//
//  AttractionView.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/17/23.
//

import SwiftUI

struct AttractionView: View {
    private var imageName: String
    private var title: String
    private var description: String
    private var iPhone = UIDevice.current.userInterfaceIdiom == .phone

    init(
        imageName: String,
        title: String,
        description: String
    ) {
        self.imageName = imageName
        self.title = title
        self.description = description
    }

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .padding(.bottom, 50)

            Text(title)
                .font(.system(size: 24, weight: .semibold))
                .padding(.bottom, 16)
                .foregroundColor(Color.label)

            Text(description)
                .multilineTextAlignment(.center)
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color.secondaryLabel)
        }
    }
}

struct AttractionView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionView(
            imageName: "Tracking_Map",
            title: "Nearby restaurants",
            description: "You don't have to go far to find a good restaurant,we have provided all the restaurants that is near you"
        )
    }
}
