//
//  FirebaseManager.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/5/24.
//

import Foundation
import Firebase

class FirebaseManager {
    static let shared = FirebaseManager()

    private init() {}

    func uploadImage(_ image: UIImage, completion: @escaping (Result<String, Error>) -> Void) {
        // Code to upload image to Firebase Storage
    }
}
