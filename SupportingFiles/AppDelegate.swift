//
//  AppDelegate.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/13/24.
//

import UIKit
import Firebase

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Configure Firebase
        FirebaseApp.configure()
        return true
    }
    
    // ... any other AppDelegate methods you need to implement ...
}
