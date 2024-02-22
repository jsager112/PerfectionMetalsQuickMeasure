//
//  ARView.swift
//  Perfection Metals Quick Measure & Design 
//
//  Created by Jeff Sager on 2/8/24.
//

import SwiftUI

struct ARView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

import ARKit
import SwiftUI


    // Your SwiftUI body for the view
    var body: some View {
        Text("Hello, AR!")
    }


// If you need to interact with ARSCNView, you would create a UIViewControllerRepresentable:
struct ARViewContainer: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let arVC = ARViewController()
        return arVC
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}

    typealias UIViewControllerType = UIViewController
}

class ARViewController: UIViewController, ARSCNViewDelegate {
    var arSCNView = ARSCNView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up ARSCNView and ARSession here
    }
}
