//
//  Student+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by icluster2 on 21/05/20.
//  Copyright © 2020 DSMax. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var address: String?
    @NSManaged public var city: String?
    @NSManaged public var mobile: String?

}
