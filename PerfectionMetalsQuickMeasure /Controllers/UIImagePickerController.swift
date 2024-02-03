//
//  UIImagePickerController.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/7/24.
//

import UIKit
import AVFoundation

class ImageCaptureController: UIViewController, AVCapturePhotoCaptureDelegate {
    var captureSession: AVCaptureSession!
    var photoOutput: AVCapturePhotoOutput!
    var previewLayer: AVCaptureVideoPreviewLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Begin setting up the session here
        setupCaptureSession()
    }

    func setupCaptureSession() {
        captureSession = AVCaptureSession()
        captureSession.beginConfiguration()

        let videoDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back)
        guard let videoDeviceInput = try? AVCaptureDeviceInput(device: videoDevice!), captureSession.canAddInput(videoDeviceInput) else { return }

        captureSession.addInput(videoDeviceInput)
        photoOutput = AVCapturePhotoOutput()
        guard captureSession.canAddOutput(photoOutput) else { return }
        
        captureSession.addOutput(photoOutput)
        captureSession.sessionPreset = .photo
        captureSession.commitConfiguration()

        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.bounds
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)

        captureSession.startRunning()
    }

    // MARK: - AVCapturePhotoCaptureDelegate
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        // Process captured photo
    }
}
