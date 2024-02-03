//
//  RoofSceneView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/25/24.
//

import SwiftUI
import SceneKit

struct RoofSceneView: View {
    var body: some View {
        SceneView(
            scene: SCNScene(named: "RoofScene.scn"),
            options: [.autoenablesDefaultLighting, .allowsCameraControl]
        )
    }
}
#Preview {
    RoofSceneView()
}
