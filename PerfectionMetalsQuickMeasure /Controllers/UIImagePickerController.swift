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
    setupCaptureSession()
  }

  func setupCaptureSession() {
    captureSession = AVCaptureSession()
    guard let videoDevice = AVCaptureDevice.default(for: .video) else { return }
    guard let videoDeviceInput = try? AVCaptureDeviceInput(device: videoDevice), captureSession.canAddInput(videoDeviceInput) else { return }
    
    captureSession.beginConfiguration()
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

  func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
    // Implement the logic to handle the captured photo, e.g., saving to an album or passing to another view controller
  }
}
import UIKit
import AVFoundation

class ImagePickerController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImagePicker()
    }
    
    private func setupImagePicker() {
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary // Change to .camera to use the camera
        imagePicker.allowsEditing = false
    }
    
    func presentPicker(animated: Bool) {
        present(imagePicker, animated: animated)
    }
    
    // Delegate method for image picker
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        // Handle the selected image
        dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
}

