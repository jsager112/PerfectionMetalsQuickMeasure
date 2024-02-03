//
//  PropertyType.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/28/24.
//

import Foundation
import Foundation

enum PropertyType: String, CaseIterable, Identifiable, Hashable {
    case singleFamily = "Single Family"
    case multifamily = "Multifamily"
    case commercial = "Commercial"
    
    var id: String { self.rawValue }
}
