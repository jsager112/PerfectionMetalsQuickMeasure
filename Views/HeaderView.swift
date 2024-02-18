//
//  HeaderView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//


import SwiftUI

struct HeaderView: View {
    var isLargeHeader: Bool

    var body: some View {
        if isLargeHeader {
            // The style for the larger header, possibly used in the main screen
            Text("Perfection Metals Quick Measure & Design")
                // Styling for the large header
        } else {
            // The style for the smaller header, used in sub-screens
            HStack {
                Image("HeaderLogo") // Replace with your actual logo image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 50) // Adjust size accordingly
                // Add more elements if needed
            }
            // Styling for the small header
        }
    }
}

// If you're using previews, you can set one for the HeaderView as well
#if DEBUG
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(isLargeHeader: false)
    }
}
#endif



