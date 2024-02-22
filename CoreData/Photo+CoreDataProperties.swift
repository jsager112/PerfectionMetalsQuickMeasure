//
//  Photo+CoreDataProperties.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/16/24.
//
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }

    @NSManaged public var dateTaken: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var imagedata: Data?
    @NSManaged public var photodescripition: String?
    @NSManaged public var jobsite: Jobsite?

}

extension Photo : Identifiable {

}
