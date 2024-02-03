//
//  RoofScene.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/25/24.
//
import SceneKit
import UIKit
import Foundation

class RoofScene: SCNScene {
    
    override init() {
        super.init()
        setupScene()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupScene() {
        // Camera setup
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 5, z: 15)
        self.rootNode.addChildNode(cameraNode)
        
        // Omni light setup
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        self.rootNode.addChildNode(lightNode)
        
        // Ambient light setup
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light?.type = .ambient
        ambientLightNode.light?.color = UIColor.darkGray
        self.rootNode.addChildNode(ambientLightNode)
        
        // Roof setup
        let roofGeometry = SCNPlane(width: 10, height: 10)
        let roofMaterial = SCNMaterial()
        roofMaterial.diffuse.contents = UIColor.gray
        roofGeometry.materials = [roofMaterial]
        
        let roofNode = SCNNode(geometry: roofGeometry)
        roofNode.position = SCNVector3(x: 0, y: 0, z: 0)
        roofNode.eulerAngles = SCNVector3(x: -.pi / 2, y: 0, z: 0)

        self.rootNode.addChildNode(roofNode)
    }
}
import SwiftUI
import SceneKit

struct SceneKitView: UIViewRepresentable {
    let scene: SCNScene
    
    func makeUIView(context: Context) -> SCNView {
        let view = SCNView()
        view.scene = scene
        view.allowsCameraControl = true // allows the user to manipulate the camera
        view.autoenablesDefaultLighting = true // add some default lighting
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        // Perform any updates to the SceneKit view when state changes occur
        uiView.scene = self.scene
    }
}

    var body: some View {
        NavigationView {
            ARSceneView()
                .edgesIgnoringSafeArea(.all)
                .navigationBarTitle("Roof Visualizer", displayMode: .inline)
        }
    }
