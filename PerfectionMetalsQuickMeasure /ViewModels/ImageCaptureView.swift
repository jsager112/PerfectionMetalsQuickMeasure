// Perfection___DesignApp.swift

import UIKit
import AVFoundation

class ImageCaptureController: UIViewController {
    var captureSession: AVCaptureSession!
    var photoOutput: AVCapturePhotoOutput!
    var previewLayer: AVCaptureVideoPreviewLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCaptureSession()
    }
    
    private func setupCaptureSession() {
        captureSession = AVCaptureSession()
        guard let backCamera = AVCaptureDevice.default(for: .video) else {
            print("Unable to access back camera!")
            return
        }
        
        do {
            let input = try AVCaptureDeviceInput(device: backCamera)
            if captureSession.canAddInput(input) {
                captureSession.addInput(input)
            }
        } catch let error {
            print("Error Unable to initialize back camera:  \(error.localizedDescription)")
            return
        }

        photoOutput = AVCapturePhotoOutput()
        if captureSession.canAddOutput(photoOutput) {
            captureSession.addOutput(photoOutput)
        }

        captureSession.commitConfiguration()
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.bounds
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.insertSublayer(previewLayer, at: 0)
        captureSession.startRunning()
    }

    func captureImage(completion: @escaping (UIImage?, Error?) -> Void) {
        let settings = AVCapturePhotoSettings()
        photoOutput.capturePhoto(with: settings, delegate: self)
    }
}

extension ImageCaptureController: AVCapturePhotoCaptureDelegate {
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if let error = error {
            completion(nil, error)
        } else if let imageData = photo.fileDataRepresentation(),
                  let image = UIImage(data: imageData) {
            completion(image, nil)
        }
    }
}

