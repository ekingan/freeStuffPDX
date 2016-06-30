//
//  Post+CoreDataProperties.swift
//  FreeStuffPDX
//
//  Created by Math LLC on 6/30/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Post {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var location: String?
    @NSManaged var date: NSDate?
    @NSManaged var desc: String?

}
