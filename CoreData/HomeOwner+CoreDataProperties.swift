//
//  HomeOwner+CoreDataProperties.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/16/24.
//
//

import Foundation
import CoreData


extension HomeOwner {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HomeOwner> {
        return NSFetchRequest<HomeOwner>(entityName: "HomeOwner")
    }

    @NSManaged public var email: String?
    @NSManaged public var firstname: String?
    @NSManaged public var lastname: String?
    @NSManaged public var phonenumber: String?
    @NSManaged public var ui: UUID?
    @NSManaged public var jobsites: Jobsite?

}

extension HomeOwner : Identifiable {

}
