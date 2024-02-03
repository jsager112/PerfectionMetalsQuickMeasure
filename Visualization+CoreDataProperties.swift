//
//  Visualization+CoreDataProperties.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/16/24.
//
//

import Foundation
import CoreData


extension Visualization {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Visualization> {
        return NSFetchRequest<Visualization>(entityName: "Visualization")
    }

    @NSManaged public var color: String?
    @NSManaged public var imagedata: Data?
    @NSManaged public var visualizationtojobsite: Visualization?

}

extension Visualization : Identifiable {

}
