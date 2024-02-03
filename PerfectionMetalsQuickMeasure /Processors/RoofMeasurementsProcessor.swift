//
//  RoofMeasurementsProcessor.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/7/24.
//

import Foundation
import UIKit
import Vision

import Foundation
import Vision
import UIKit

class RoofMeasurementsProcessor {
    func processImagesForMeasurements(_ images: [UIImage], completion: @escaping ([Measurement]?, Error?) -> Void) {
        // Placeholder for image processing logic
        // You will need to implement this part based on your measurement extraction logic
    }
}

// Define the Measurement struct which should be adjusted according to the data you expect to extract
struct Measurement {
    var length: Double
    var width: Double
    var height: Double
}
