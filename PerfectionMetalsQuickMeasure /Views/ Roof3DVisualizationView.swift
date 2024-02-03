
import SwiftUI
import SceneKit

import SceneKit

struct Roof3DVisualizationView: UIViewRepresentable {

    func makeUIView(context: Context) -> SCNView {
        let scnView = SCNView()

        // Set the scene to the file you just created
        scnView.scene = SCNScene(named: "RoofScene.scn")  // Make sure the name matches your file's name

        // Configure additional scene settings
        scnView.autoenablesDefaultLighting = true
        scnView.allowsCameraControl = true
        scnView.backgroundColor = UIColor.clear

        return scnView
    }

    func updateUIView(_ scnView: SCNView, context: Context) {
        // Perform any updates to the SCNView when state changes occur
    }

    // Make sure to provide a preview for SwiftUI
    static var previews: some View {
        Roof3DVisualizationView()
    }
}

struct Roof3DVisualizationView_Previews: PreviewProvider {
    static var previews: some View {
        Roof3DVisualizationView()
    }
}

