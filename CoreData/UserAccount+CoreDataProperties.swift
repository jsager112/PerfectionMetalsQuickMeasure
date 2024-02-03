//
//  UserAccount+CoreDataProperties.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 1/16/24.
//
//

import Foundation
import CoreData


extension UserAccount {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserAccount> {
        return NSFetchRequest<UserAccount>(entityName: "UserAccount")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var email: String?
    @NSManaged public var firstname: String?
    @NSManaged public var lastname: String?
    @NSManaged public var phonenumber: String?
    @NSManaged public var jobsites: UserAccount?

}

extension UserAccount : Identifiable {

}
