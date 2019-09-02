//
//  Model.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 23/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import Foundation
import UIKit

class Model{
    static var shared = Model()
    
    private init(){
    }
    
    var userID = ""
    
    
    var cursos: [CourseInfo] = [ CourseInfo(nota: 1, image: UIImage(named: "TrilhaTeste2")!),
                                 CourseInfo(nota: 2, image: UIImage(named: "TrilhaTeste2")!),
                                 CourseInfo(nota: 3, image: UIImage(named: "TrilhaTeste2")!),
                                 CourseInfo(nota: 4, image: UIImage(named: "TrilhaTeste2")!),
                                 CourseInfo(nota: 5, image: UIImage(named: "TrilhaTeste2")!),
                                 CourseInfo(nota: 6, image: UIImage(named: "TrilhaTeste2")!),
                                 CourseInfo(nota: 7, image: UIImage(named: "TrilhaTeste2")!),
    ]
    
}


