//
//  CommonTextField.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 3/18/23.
//

import SwiftUI

struct CommonTextField: View {
    @Binding var textField: String
    var placeholder: String = "Enter your full name"


    var body: some View {
        TextField(
            placeholder,
            text: $textField
        )
        .font(.system(size: 14, weight: .medium))
        .textFieldStyle(.roundedBorder)
        
    }
}

struct CommonTextField_Previews: PreviewProvider {
   static private var fullName: String = ""
    static var previews: some View {
        CommonTextField(textField: .constant(fullName) )
    }
}
