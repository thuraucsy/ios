//
//  Restaurant.swift
//  FoodPin
//
//  Created by ThuraAung on 1/3/16.
//  Copyright © 2016 ThuraAung. All rights reserved.
//

import Foundation
import CoreData

class Restaurant:NSManagedObject {
    @NSManaged var name:String!
    @NSManaged var type:String!
    @NSManaged var location:String!
    @NSManaged var phone:String!
    @NSManaged var image:NSData!
    @NSManaged var isVisited:NSNumber!
//    
//    init(name:String, type:String, location:String, phone:String, image:String, isVisited:Bool){
//        super.init()
//        self.name = name
//        self.type = type
//        self.location = location
//        self.phone = phone
//        self.image = image
//        self.isVisited = isVisited
//    }
}
