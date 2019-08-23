//
//  UserInfo.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 23/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import Foundation
import UIKit

class UserInfoClass{
    internal init(databaseID: String, name: String, lastName: String, age: Int, adress: String, cellNumb: String, payedCourses: [String], abilities: [String], abilitiesFuture: [String]) {
        self.databaseID = databaseID
        self.name = name
        self.lastName = lastName
        self.age = age
        self.adress = adress
        self.cellNumb = cellNumb
        self.payedCourses = payedCourses
        self.abilities = abilities
        self.abilitiesFuture = abilitiesFuture
    }
    
    
    var databaseID: String
    var name: String
    var lastName: String
    var age: Int
    var adress: String
    var cellNumb: String
    var payedCourses: [String]
    var abilities: [String]
    var abilitiesFuture: [String]
}

