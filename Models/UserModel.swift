//
//  UserModel.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import Foundation

struct UserModel {
    var username: String
    var email: String
    // Include other details like profile picture URL, user preferences, etc.
}
import Foundation

struct UserModel: Identifiable, Codable {
    var id: String = UUID().uuidString
    var username: String
    var email: String
    var phoneNumber: String?
    
    // Add other user-related properties as needed
}

