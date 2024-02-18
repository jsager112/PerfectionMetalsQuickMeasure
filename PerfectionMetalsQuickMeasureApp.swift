//
//  PerfectionMetalsQuickMeasureApp.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/14/24.
//

import SwiftUI
import Firebase

@main
struct PerfectionMetalsQuickMeasureApp: App {
    // Configure Firebase in the init method if needed
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// Assuming ContentView is your root view that decides which view to present (LoginView or MainContentView)
struct ContentView: View {
    @StateObject var authenticationVM = AuthenticationViewModel()

    var body: some View {
        if authenticationVM.isAuthenticated {
            MainContentView()
        } else {
            LoginView()
        }
    }
}

