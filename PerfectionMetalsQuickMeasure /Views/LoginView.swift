//
//  LoginView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/11/24.
//
import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderLogoView()
                    .frame(height: 150)
                    .padding(.top, 50)
                Text("Quick Measure & Design")
                    .font(.title)
                    .padding()
                TextField("Phone Number, Username or Email", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                Button("Log In") {
                    // TODO: Implement login functionality
                }
                .buttonStyle(PrimaryButtonStyle())
                Button("Forgot Password?") {
                    // TODO: Implement forgot password functionality
                }
                .padding()
                Spacer()
                NavigationLink("Don't have an account? Sign Up", destination: CreateAccountView())
                    .padding(.bottom, 20)
            }
            .navigationBarTitle("Login", displayMode: .inline)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
