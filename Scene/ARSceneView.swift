//
//  ARSceneView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/1/24.
//

import SwiftUI
import SceneKit
import ARKit

struct ARSceneView: UIViewRepresentable {
    func makeUIView(context: Context) -> ARSCNView {
        let arView = ARSCNView(frame: .zero)
        arView.delegate = context.coordinator
        arView.autoenablesDefaultLighting = true
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = .horizontal
        arView.session.run(configuration)
        return arView
    }

    func updateUIView(_ uiView: ARSCNView, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, ARSCNViewDelegate {
        var parent: ARSceneView

        init(_ parent: ARSceneView) {
            self.parent = parent
        }
    }
}


