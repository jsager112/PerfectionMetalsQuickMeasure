//
//  ARSceneView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/1/24.
//

import Foundation
import SwiftUI
import SceneKit
import ARKit

struct ARSceneView: UIViewRepresentable {
    func makeUIView(context: Context) -> ARSCNView {
        let arView = ARSCNView(frame: .zero)
        arView.delegate = context.coordinator
        arView.autoenablesDefaultLighting = true
        let configuration = ARWorldTrackingConfiguration()
        // Assuming you're tracking images to place the roof models
        configuration.detectionImages = ...arView.session.run(configuration)
        return arView
    }
    
    func updateUIView(_ uiView: ARSCNView, context: Context) {
        // Perform any necessary updates when the state changes
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}

class Coordinator: NSObject, ARSCNViewDelegate {
    var parent: ARSceneView
    
    init(_ parent: ARSceneView) {
        self.parent = parent
    }
    
    // Implement ARSCNViewDelegate methods here
}
extension Coordinator {
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        guard let imageAnchor = anchor as? ARImageAnchor else { return }
        
        // Load the 3D model
        let roofNode = loadRoofModel()
        node.addChildNode(roofNode)
    }
    
    func loadRoofModel() -> SCNNode {
        // Assuming you have a "roof.scn" file in your project
        let scene = SCNScene(named: "roof.scn")!
        let node = scene.rootNode.clone()
        return node
    }
}

