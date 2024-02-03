//
//  LoginView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/11/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    struct LoginView: View {
        @State private var username: String = ""
        @State private var password: String = ""
        
        var body: some View {
            Form {
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
                Button("Login") {
                    // Implement login logic
                }
            }
            .navigationBarTitle("Login", displayMode: .inline)
        }
    }
