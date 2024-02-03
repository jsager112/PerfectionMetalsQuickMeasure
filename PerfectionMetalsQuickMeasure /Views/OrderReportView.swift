//
//  OrderReportView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/23/24.
//

import SwiftUI

struct OrderReportView: View {
    @State private var propertyType: PropertyType = .singleFamily
    @State private var orderStep: OrderStep = .selectPropertyType
    // ... your other state variables

    var body: some View {
        NavigationView {
            VStack {
                // Your content here...

                // It's important to have some view returned here,
                // for now, let's just put an empty Text view as a placeholder
                Text("Content goes here")
            }
            .navigationBarTitle("Order Report", displayMode: .inline)
        }
    }
}

struct OrderReportView_Previews: PreviewProvider {
    static var previews: some View {
        OrderReportView()
    }
}
