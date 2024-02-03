//
//  ColorCustomizationView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/7/24.
//
import SwiftUI

struct ColorCustomizationView: View {
    @Binding var selectedColor: Color // SwiftUI's Color type is used in views
    
    var body: some View {
        ColorPicker("Choose Roof Color", selection: $selectedColor)
            .padding()
    }
}
