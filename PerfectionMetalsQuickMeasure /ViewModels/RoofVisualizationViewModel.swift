//
//  └── RoofVisualizationViewModel.swift       :: Swift file for the Roof3DVisualizationView's view model..swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/7/24.
//

import Foundation
import SwiftUI
import SceneKit

struct Roof3DVisualizationView: UIViewRepresentable {
    func makeUIView(context: Context) -> SCNView {
        let scnView = SCNView()
        scnView.scene = SCNScene() // Initialize with your 3D model
        
        // Configure the scene view here
        
        return scnView
    }
    
    func updateUIView(_ scnView: SCNView, context: Context) {
        // Update the view when your app's state changes
    }
}
