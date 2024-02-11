//
//  LoginView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/11/24.
//

import SwiftUI

struct LoginView: View {
    @Binding var isShowingLoginView: Bool
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            // Replace with your own login UI components
            TextField("Username", text: $username)
                .padding()
                .border(Color.gray)
            SecureField("Password", text: $password)
                .padding()
                .border(Color.gray)
            Button("Log In") {
                // Perform login action and switch views
                self.isShowingLoginView = false
                // Implement your login logic here
            }
            .padding()
        }
    }
}
