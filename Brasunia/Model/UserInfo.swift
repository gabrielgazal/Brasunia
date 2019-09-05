//
//  UserInfo.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 23/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import Foundation
import UIKit

class UserInfoClass: Codable{
    internal init(databaseID: String, name: String, lastName: String, age: Int, adress: String, cellNumb: String, payedCourses: [String], abilities: [String], abilitiesFuture: [String], completedCourses: [String]) {
        self.databaseID = databaseID
        self.name = name
        self.lastName = lastName
        self.age = age
        self.adress = adress
        self.cellNumb = cellNumb
        self.payedCourses = payedCourses
        self.abilities = abilities
        self.abilitiesFuture = abilitiesFuture
        self.completedCourses = completedCourses
    }
    
    public init(databaseID: String, email: String){
        self.databaseID = databaseID
        self.email = email
    }

    var databaseID: String =  ""
    var name: String = ""
    var email: String = ""
    var lastName: String = ""
    var age: Int = 0
    var adress: String = ""
    var cellNumb: String = ""
    var payedCourses: [String] = []
    var abilities: [String] = []
    var abilitiesFuture: [String] = []
    var completedCourses: [String] = []
}

