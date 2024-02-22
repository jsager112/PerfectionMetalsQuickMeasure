//
//  RoofScene.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/16/24.
//

import Foundation
import SceneKit
import UIKit

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
        rootNode.addChildNode(cameraNode)
        
        // Omni light setup
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        rootNode.addChildNode(lightNode)
        
        // Ambient light setup
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light?.type = .ambient
        ambientLightNode.light?.color = UIColor.darkGray
        rootNode.addChildNode(ambientLightNode)
        
        // Roof setup
        let roofGeometry = SCNPlane(width: 10, height: 10)
        let roofMaterial = SCNMaterial()
        roofMaterial.diffuse.contents = UIColor.gray
        roofGeometry.materials = [roofMaterial]
        
        let roofNode = SCNNode(geometry: roofGeometry)
        roofNode.position = SCNVector3(x: 0, y: 0, z: 0)
        roofNode.eulerAngles = SCNVector3(x: -.pi / 2, y: 0, z: 0)
        rootNode.addChildNode(roofNode)
    }
}
