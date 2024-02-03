//
//  ├── Controllers: │   ├── ImageCaptureController.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/7/24.
//

import Foundation
│   └── ImageCaptureController.swift           // Swift file for camera interaction logic.
import UIKit
import AVFoundation

class ImageCaptureController: UIViewController {
    var captureSession: AVCaptureSession!
    var photoOutput: AVCapturePhotoOutput!
    var previewLayer: AVCaptureVideoPreviewLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkCameraPermission()
    }
    
    private func checkCameraPermission() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            setupCaptureSession()
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { granted in
                if granted {
                    self.setupCaptureSession()
                }
            }
        case .denied:
            return // Handle denied access
        case .restricted:
            return // Handle restricted access
        @unknown default:
            return // Handle future cases
        }
    }
    
    private func setupCaptureSession() {
        DispatchQueue.main.async {
            self.captureSession = AVCaptureSession()
            guard let backCamera = AVCaptureDevice.default(for: .video) else {
                // Handle no back camera available
                return
            }
            do {
                let input = try AVCaptureDeviceInput(device: backCamera)
                self.captureSession.addInput(input)
                self.photoOutput = AVCapturePhotoOutput()
                self.captureSession.addOutput(self.photoOutput)
                self.previewLayer = AVCaptureVideoPreviewLayer(session: self.captureSession)
                self.previewLayer.frame = self.view.bounds
                self.previewLayer.videoGravity = .resizeAspectFill
                self.view.layer.addSublayer(self.previewLayer)
                self.captureSession.startRunning()
            } catch {
                // Handle error
            }
        }
    }
    
    // Add functionality for capturing images...
}
