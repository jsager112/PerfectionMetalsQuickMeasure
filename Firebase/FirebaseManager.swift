//
//  FirebaseManager.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import Foundation
import Foundation
import FirebaseAuth

class FirebaseManager {

    static let shared = FirebaseManager() // Singleton instance

    private init() {
        // Private initialization to ensure just one instance is created.
        FirebaseApp.configure() // Make sure you have the Firebase module imported
    }

    func loginWithEmail(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let user = authResult?.user {
                completion(.success(user))
            } else if let error = error {
                completion(.failure(error))
            }
        }
    }

    // Additional methods for sign up, sign out, password reset, etc.
}
