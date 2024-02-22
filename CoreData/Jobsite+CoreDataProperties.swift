//
//  Jobsite+CoreDataProperties.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/16/24.
//
//

import Foundation
import CoreData


extension Jobsite {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Jobsite> {
        return NSFetchRequest<Jobsite>(entityName: "Jobsite")
    }

    @NSManaged public var address: String?
    @NSManaged public var datecreated: Date?
    @NSManaged public var email: String?
    @NSManaged public var homeownername: String?
    @NSManaged public var id: UUID?
    @NSManaged public var phonenumber: String?
    @NSManaged public var propertytype: String?
    @NSManaged public var homeowner: Jobsite?
    @NSManaged public var photos: Jobsite?
    @NSManaged public var measurements: Jobsite?
    @NSManaged public var visualizations: Jobsite?

}

extension Jobsite : Identifiable {

}
