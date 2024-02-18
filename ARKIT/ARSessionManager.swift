//
//  ARSessionManager.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import Foundation
import ARKit
import Combine

class ARSessionManager: NSObject, ObservableObject, ARSCNViewDelegate {
    private var arView: ARSCNView!
    @Published var isSessionReady = true // Renamed to a more appropriate variable name

    func setupARView(arView: ARSCNView) {
        self.arView = arView
        self.arView.delegate = self
    }

    func startSession() {
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal, .vertical]
        arView.session.run(configuration, options: [.resetTracking, .removeExistingAnchors])
    }

    func pauseSession() {
        arView.session.pause()
    }

    // ARSCNViewDelegate methods need to be implemented here as needed, for example:
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Handle session failures
        print("Session failed with error: \(error.localizedDescription)")
        self.isSessionReady = false
    }

    func sessionWasInterrupted(_ session: ARSession) {
        // Handle session interruptions
        print("Session was interrupted")
    }

    func sessionInterruptionEnded(_ session: ARSession) {
        // Handle session interruption ends
        print("Session interruption ended")
        self.isSessionReady = true
    }

    // Other ARSCNViewDelegate methods...
}
