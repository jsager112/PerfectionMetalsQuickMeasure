//
//  RoofMeasurement+CoreDataProperties.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/16/24.
//
//

import Foundation
import CoreData


extension RoofMeasurement {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<RoofMeasurement> {
        return NSFetchRequest<RoofMeasurement>(entityName: "RoofMeasurement")
    }

    @NSManaged public var eaves: Double
    @NSManaged public var height: Double
    @NSManaged public var length: Double
    @NSManaged public var pitch: Double
    @NSManaged public var rake: Double
    @NSManaged public var rigde: NSObject?
    @NSManaged public var valley: Double
    @NSManaged public var width: Double
    @NSManaged public var roofmeasurementtojobsite: RoofMeasurement?
    @NSManaged public var jobsite: Jobsite?

}

extension RoofMeasurement : Identifiable {

}
