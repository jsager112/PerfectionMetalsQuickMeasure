//
//  PropertyTypeSelectionView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/24/24.

import SwiftUI

struct PropertyTypeSelectionView: View {
    @Binding var selectedPropertyType: PropertyType?

    var body: some View {
        List(PropertyType.allCases, id: \.self) { propertyType in
            HStack {
                Text(propertyType.rawValue)
                Spacer()
                if selectedPropertyType == propertyType {
                    Image(systemName: "checkmark")
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                self.selectedPropertyType = propertyType
            }
        }
        .navigationBarTitle("Select Property Type")
    }
}
