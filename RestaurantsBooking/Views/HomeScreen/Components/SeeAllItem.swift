//
//  SeeAllItem.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 4/2/23.
//

import SwiftUI

struct SeeAllItem: View {
    @Binding var showAll: Bool
    private var title: String
    private var comment: String
    
    init(
        showAll: Binding<Bool>,
        title: String,
        comment: String
    ) {
        self._showAll = showAll
        self.title = title
        self.comment = comment
    }
    
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color.label)
                
                Text(comment)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color.label.opacity(0.70))
                
            }
            
            Spacer()
            
            Button {
                
            } label: {
                HStack(spacing: 4) {
                    Text("See All")
                    Image(systemName: "chevron.right")
                }
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(Color.label.opacity(0.70))
            }

        }
        .accessibilityElement(children: .combine)
    }
}

struct SeeAllItem_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllItem(
            showAll: .constant(true),
            title: "Today New Arivable",
            comment: "Best of the today  food list update")
    }
}
