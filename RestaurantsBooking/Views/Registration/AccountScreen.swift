//
//  AccountScreen.swift
//  RestaurantsBooking
//
//  Created by Md. Masud Rana on 4/8/23.
//

import SwiftUI

struct AccountScreen: View {
    @Binding private var showCreateAccountView: Bool
    @Binding private var showLoginView: Bool
    
    init(
        showCreateAccountView: Binding<Bool>,
        showLoginView: Binding<Bool>
    ) {
        self._showCreateAccountView = showCreateAccountView
        self._showLoginView = showLoginView
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(width: 100, height: 2)
                .foregroundColor(Color.secondaryLabel)
                .padding(.vertical, 20)
            
            HStack(spacing: 0) {
                Button {
                    showCreateAccountView = true
                    showLoginView = false
                } label: {
                    VStack {
                        Text("Create Account")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(showCreateAccountView ? Color.systemGreen : Color.secondaryLabel)
                        
                        if showCreateAccountView {
                            Rectangle()
                                .frame(width: 100, height: 2)
                                .foregroundColor(Color.systemGreen)
                        }
                    }
                }
                
                Spacer()
                
                Button {
                    showCreateAccountView = false
                    showLoginView = true
                } label: {
                    VStack {
                        Text("Login")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(showLoginView ? Color.systemGreen : Color.secondaryLabel)
                        
                        if showLoginView {
                            Rectangle()
                                .frame(width: 25, height: 2)
                                .foregroundColor(Color.systemGreen)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical ,30)

            if showCreateAccountView {
                CreateAccountView()
            }
            
            if showLoginView {
                LoginView()
            }
            
            Spacer()
        }
    }
}

struct AccountScreen_Previews: PreviewProvider {
    static var previews: some View {
        AccountScreen(
            showCreateAccountView: .constant(true),
            showLoginView: .constant(false)
        )
    }
}
