//
//  PropertyAddressInputView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/24/24.
//

import SwiftUI

struct PropertyAddressInputView: View {
    @Binding var city: String
    @Binding var state: String
    @Binding var zipCode: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter Property Address")
                .font(.headline)
            
            TextField("City", text: $city)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("State", text: $state)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Zip Code", text: $zipCode)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
        }
        .padding()
    }
}
