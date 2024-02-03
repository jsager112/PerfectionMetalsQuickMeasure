//
//  HeaderLogoView.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/11/24.
//
import SwiftUI

struct HeaderLogoView: View {
    var isLargeStyle: Bool = false // Default to false for small style

    var body: some View {
        HStack {
            if isLargeStyle {
                // Large centered logo for the Login screen
                Image("HeaderLogo") // Ensure the image asset is named "HeaderLogo"
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else {
                // Small logo aligned to the left for other screens
                Image("HeaderLogo") // Ensure the image asset is named "HeaderLogo"
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100) // Adjust the size as necessary
            }
            Spacer() // Pushes the logo to the left
        }
    }
}

struct HeaderLogoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderLogoView(isLargeStyle: true)
                .previewLayout(.sizeThatFits)
                .padding() // This padding is to replicate a navigation bar's title space.
            HeaderLogoView()
                .previewLayout(.sizeThatFits)
                .padding([.leading], 20) // This padding is to give some space from the left edge of the screen.
        }
    }
}
