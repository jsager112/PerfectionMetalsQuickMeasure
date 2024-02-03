//
//  └── RoofVisualizationViewModel.swift       :: Swift file for the Roof3DVisualizationView's view model..swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/7/24.
//

import Foundation
import SwiftUI
import SceneKit
import Combine // Import Combine here

class RoofVisualizationViewModel: ObservableObject {
    @Published var scene: SCNScene?
    @Published var isProcessing = false

    private var cancellables = Set<AnyCancellable>() // This will now be recognized

    init() {
        loadRoofScene()
    }
    
    func loadRoofScene() {
        self.isProcessing = true
        // Assuming "roofScene.scnassets" is the directory in your app bundle
        // where you keep the .scn file and related resources
        let sceneName = "roofScene.scnassets/roofScene"
        DispatchQueue.global(qos: .userInitiated).async {
            guard let scene = SCNScene(named: sceneName) else {
                DispatchQueue.main.async {
                    self.isProcessing = false
                    // Handle the error, show an alert, etc.
                }
                return
            }
            DispatchQueue.main.async {
                self.scene = scene
                self.isProcessing = false
            }
        }
    }
    
    // Add methods for user interaction, network requests, etc.
}
