//
//  Recipe+CoreDataProperties.swift
//  recipez
//
//  Created by Nathan McGuire on 20/11/2015.
//  Copyright © 2015 Off Da Husk Studios. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Recipe {

    @NSManaged var image: NSData?
    @NSManaged var ingredients: String?
    @NSManaged var steps: String?
    @NSManaged var title: String?

}
