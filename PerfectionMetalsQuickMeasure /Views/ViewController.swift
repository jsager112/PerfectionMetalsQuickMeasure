//
//  ViewController.swift
//  Perfection Metals Quick Measure & Design 
//
//  Created by Jeff Sager on 2/8/24.
//

import UIKit
import ARKit

class YourARViewController: UIViewController {
    var customARSCNView: CustomARSCNView!

    override func loadView() {
        super.loadView()
        customARSCNView = CustomARSCNView(frame: UIScreen.main.bounds)
        self.view = customARSCNView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup after loading the view, if needed
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        customARSCNView.startSession() // Make sure this method is defined in CustomARSCNView
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        customARSCNView.pauseSession()
    }
}
