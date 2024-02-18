//
//  MeasurementModel.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import Foundation
struct MeasurementModel {
    var length: Double
    var width: Double
    var height: Double
    // Add other measurement properties
}
import Foundation

struct MeasurementModel: Identifiable, Codable {
    var id: String = UUID().uuidString
    var length: Double
    var width: Double
    var height: Double
    
    // Include other measurement properties and potentially methods to calculate area, volume, etc.
}
