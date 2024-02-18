//
//  SignUpView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import Foundation
import FirebaseAuth

class AuthenticationViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isAuthenticated: Bool = false

    func login(username: String, password: String) {
        // Use Firebase authentication to log in
        Auth.auth().signIn(withEmail: username, password: password) { [weak self] result, error in
            DispatchQueue.main.async {
                if let user = result?.user {
                    self?.isAuthenticated = true
                } else {
                    self?.isAuthenticated = false
                    // Handle errors such as wrong password, user not found etc.
                }
            }
        }
    }
}


