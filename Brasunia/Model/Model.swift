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
    
    
    var cursos: [CourseInfo] = [ CourseInfo(nome: "kelvin", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Novato"),
                                 CourseInfo(nome: "Jose", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Novato"),
                                 CourseInfo(nome: "Louro", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Novato"),
    ]
    
    

    func SortCurso(trilha: String) -> [CourseInfo]{ // chama uma vez na hora de popular collection
        var cursosPossiveis: [CourseInfo] = []
        for curso in cursos{
            if curso.trilha == trilha{
                cursosPossiveis.append(curso)
            }
        }
        return cursosPossiveis
    }
    
    func SortDific(cursosPossiveis: [CourseInfo], nivel:String) -> [CourseInfo]{ // chama na hora de popuklar  toda section
        var cursosFilt: [CourseInfo]  = []
        for curso in cursosPossiveis{
            if curso.nivel == nivel{
                cursosFilt.append(curso)
            }
        }
        return cursosFilt
    }
}



