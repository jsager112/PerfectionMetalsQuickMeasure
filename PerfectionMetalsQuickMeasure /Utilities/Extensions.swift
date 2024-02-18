//
//  Extensions.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/15/24.
//

// Extensions.swift
// Perfection Metals Quick Measure & Design

import UIKit

extension UIColor {
    static let customBlue = UIColor.blue // Replace with actual RGB values if needed
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

