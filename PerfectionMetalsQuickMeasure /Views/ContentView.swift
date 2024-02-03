//
//  ContentView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/11/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Perfection Metals Quick Measure & Design")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: CreateAccountView()) {
                    Text("Create Account")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(.horizontal, 50)
                }
                
                NavigationLink(destination: LoginView()) {
                    Text("Login")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(.horizontal, 50)
                }
                
                Spacer()
                
                Text("Capture images of the property and customize your metal roof.")
                    .padding()
            }
            .navigationBarTitle("Welcome")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() 
    }
}

