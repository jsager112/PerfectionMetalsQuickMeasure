//
//  ARViewContainer.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import SwiftUI
import ARKit
import RealityKit

struct ARViewContainer: UIViewRepresentable {
    @ObservedObject var sessionManager: ARSessionManager

    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        sessionManager.setupARView(arView: arView)
        return arView
    }

    func updateUIView(_ uiView: ARView, context: Context) {
        // Update the ARView if needed.
    }
}

