//
//  RoofVisualizationView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import SwiftUI

struct RoofVisualizationView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    RoofVisualizationView()
}
import SwiftUI
import SceneKit

struct Roof3DVisualizationView: UIViewRepresentable {
    func makeUIView(context: Context) -> SCNView {
        let scnView = SCNView()
        scnView.scene = RoofScene()
        scnView.allowsCameraControl = true // Enable default camera controls
        scnView.autoenablesDefaultLighting = true // Enable default lighting
        return scnView
    }
    
    func updateUIView(_ scnView: SCNView, context: Context) {
        // Update the view when your app's state changes, if necessary
    }
}
