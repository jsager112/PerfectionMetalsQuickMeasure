//
//  PropertyModel.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import Foundation
struct PropertyModel {
    var address: String
    // Add other property properties
}
import Foundation

struct PropertyModel: Identifiable, Codable {
    var id: String = UUID().uuidString
    var address: String
    var type: OrderViewModel.PropertyType
    var owner: UserModel
    
    // Add other property-related properties as needed
}
