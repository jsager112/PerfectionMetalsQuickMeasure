//
//  PlaceOrderView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/11/24.
//

import SwiftUI

struct PlaceOrderView: View {
    @State private var orderDetails: String = ""
    @Binding var propertyType: PropertyType
    @Binding var address: String
    @Binding var images: [UIImage]

    var body: some View {
        VStack {
            HeaderLogoView() // Reusable logo view
                .padding(.top, 50)
            Text("Place Order")
                .font(.title)
                .padding()
            
            // Display the property type selected earlier
            Text("Property Type: \(propertyType.rawValue)")
                .padding()
            
            // Show the address entered earlier
            Text("Address: \(address)")
                .padding()
            
            // If you have additional order details to enter:
            TextField("Order Details", text: $orderDetails)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // Display thumbnails of the images captured earlier
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(images, id: \.self) { image in
                        Image(uiImage: image)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding(.vertical)
                    }
                }
            }
            
            // Button to submit the order
            Button("Place Order") {
                // Handle order placement logic here
            }
            .buttonStyle(PrimaryButtonStyle())
            .padding(.bottom, 20)
        }
        .navigationBarTitle("Place Your Order", displayMode: .inline)
    }
}

struct PlaceOrderView_Previews: PreviewProvider {
    static var previews: some View {
        // Mock data for previews
        PlaceOrderView(
            propertyType: .constant(.singleFamily),
            address: .constant("123 Main St, Springfield"),
            images: .constant([UIImage(systemName: "house.fill")!, UIImage(systemName: "building.fill")!])
        )
    }
}

