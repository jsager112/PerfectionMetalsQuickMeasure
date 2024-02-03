//
//  EnterAddressView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/11/24.
//

import SwiftUI

struct EnterAddressView: View {
    @State private var addressLine1: String = ""
    @State private var addressLine2: String = ""
    @State private var city: String = ""
    @State private var state: String = ""
    @State private var zipCode: String = ""
    
    var body: some View {
        VStack {
            HeaderLogoView() // Assuming this is a reusable view for the logo
                .padding(.top, 50)
            Text("Enter Property Address")
                .font(.title)
                .padding()
            Form {
                TextField("Address Line 1", text: $addressLine1)
                TextField("Address Line 2", text: $addressLine2)
                TextField("City", text: $city)
                TextField("State", text: $state)
                TextField("Zip Code", text: $zipCode)
                // Add your navigation or button actions here
            }
            .navigationBarTitle("Enter Address", displayMode: .inline)
        }
    }
}

struct EnterAddressView_Previews: PreviewProvider {
    static var previews: some View {
        EnterAddressView()
    }
}
