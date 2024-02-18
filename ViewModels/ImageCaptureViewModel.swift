//
//  ImageCaptureViewModel.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import Foundation
import UIKit
class ImageCaptureViewModel: ObservableObject {
    @Published var images: [UIImage] = []

    func captureImage() {
        // Implement image capture logic
    }
}
