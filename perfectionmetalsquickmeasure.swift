//
//  perfectionmetalsquickmeasure.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/17/24.
//

import SwiftUI
import Firebase

// Make sure the name 'AppDelegate' is unique across the project
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Configure Firebase if you're using it
        FirebaseApp.configure()
        
        // Additional setup can be done here
        
        return true
    }
    
    // Implement other UIApplicationDelegate methods as needed
}

@main
struct PerfectionMetalsApp: App {
    // Register your app's delegate if needed
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    typealias Body = <#type#>
    
    struct ContentView: View {
        var body: some View {
            Text("LoginView")
        }
    }
}
