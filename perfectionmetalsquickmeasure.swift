//
//  perfectionmetalsquickmeasure.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/17/24.
//

import SwiftUI
import Firebase

@main
struct YourApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(greeting: <#String#>)
        }
    }
    struct ContentView: View {
        let greeting: String
        
        init(greeting: String) {
            self.greeting = greeting
        }
        var body: some View {
            Text(greeting)
        }
    }
    struct YourAppName_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(greeting: "Hello, World!")
        }
    }
}
