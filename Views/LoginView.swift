//
//  LoginView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = AuthenticationViewModel()

    var body: some View {
        VStack {
            HeaderView(isLargeHeader: true)
            TextField("Username", text: $viewModel.username)
                .padding()
                .border(Color.gray)
            SecureField("Password", text: $viewModel.password)
                .padding()
                .border(Color.gray)
            Button("Log In") {
                viewModel.login(username: viewModel.username, password: viewModel.password)
            }
            .padding()
            Spacer()
            NavigationLink("Don't have an account? Sign Up", destination: SignUpView())
                .padding()
        }
        .navigationTitle("Login")
        .navigationBarHidden(true)
    }
}



