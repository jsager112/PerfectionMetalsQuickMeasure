//
//  CreateAccountView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/18/24.
//

//
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/11/24.
//
import SwiftUI

struct CreateAccountView: View {
    @State private var email: String = ""
    @State private var confirmEmail: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var cellPhone: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                HeaderLogoView() // Use the small style by default
                    .padding(.top, 50)
                Text("Create Account")
                    .font(.largeTitle)
                    .padding()
                Group {
                    TextField("Email Address", text: $email)
                    TextField("Verify Email", text: $confirmEmail)
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Cell Phone", text: $cellPhone)
                    SecureField("Password", text: $password)
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                Button("Create Account") {
                    // TODO: Implement account creation functionality
                }
                .buttonStyle(PrimaryButtonStyle())
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
