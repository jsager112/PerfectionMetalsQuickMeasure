//
//  ContentView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingLoginView = true

    var body: some View {
        NavigationView {
            if isShowingLoginView {
                LoginView(isShowingLoginView: $isShowingLoginView)
            } else {
                // Placeholder for other views
                Text("This is where your other views would be conditionally displayed based on the app's state, for instance: OrderReportView(), CreateAccountView(), etc.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

