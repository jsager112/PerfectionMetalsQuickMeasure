//
//  VisualizationViewModel.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import Foundation
import Foundation
import SceneKit

class VisualizationViewModel: ObservableObject {
    @Published var scene: SCNScene?
    
    func generateVisualization(for property: PropertyModel) {
        // Implement the logic to generate a 3D visualization of the property
        // This might involve fetching a 3D model or generating one dynamically
        // For now, we'll simulate this with an empty scene
        scene = SCNScene()
        // Add nodes or geometry to your scene based on the property model
    }
}
