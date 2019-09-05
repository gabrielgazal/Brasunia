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
    var trilhas: [String] = ["Costura","Eletrônica","Marcenaria"]
    var cursosPossiveis: [CourseInfo] = []
    var cursosFilt: [CourseInfo]  = []
    var cursosCompletos : [CourseInfo] = []

//    var userInfo = UserInfoClass(databaseID: <#T##String#>, name: <#T##String#>, lastName: <#T##String#>, age: <#T##Int#>, adress: <#T##String#>, cellNumb: <#T##String#>, payedCourses: <#T##[String]#>, abilities: <#T##[String]#>, abilitiesFuture: <#T##[String]#>, completedCourses: <#T##[String]#>)
    

    var cursos: [CourseInfo] = [
            CourseInfo(nome: "kelvin", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Novato"),
            CourseInfo(nome: "Jose", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Novato"),
            CourseInfo(nome: "Louro", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Novato"),
            CourseInfo(nome: "Louro2", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Intermediário"),
            CourseInfo(nome: "Louro3", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Intermediário"),
            CourseInfo(nome: "Louro4", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Avançado"),
            CourseInfo(nome: "Louro5", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Avançado"),
            CourseInfo(nome: "Louro6", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Costura",nivel: "Proficiente"),
        
        
        CourseInfo(nome: "111", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Eletrônica",nivel: "Novato"),
        CourseInfo(nome: "222", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Eletrônica",nivel: "Novato"),
        CourseInfo(nome: "333", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Eletrônica",nivel: "Novato"),
        CourseInfo(nome: "444", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Eletrônica",nivel: "Intermediário"),
        CourseInfo(nome: "555", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Eletrônica",nivel: "Intermediário"),
        CourseInfo(nome: "666", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Eletrônica",nivel: "Avançado"),
        CourseInfo(nome: "777", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Eletrônica",nivel: "Avançado"),
        CourseInfo(nome: "888", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Eletrônica",nivel: "Proficiente"),
        
        
        CourseInfo(nome: "aaa", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Marcenaria",nivel: "Novato"),
        CourseInfo(nome: "bbb", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Marcenaria",nivel: "Novato"),
        CourseInfo(nome: "ccc", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Marcenaria",nivel: "Novato"),
        CourseInfo(nome: "ddd", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Marcenaria",nivel: "Intermediário"),
        CourseInfo(nome: "eee", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Marcenaria",nivel: "Intermediário"),
        CourseInfo(nome: "fff", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Marcenaria",nivel: "Avançado"),
        CourseInfo(nome: "ggg", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Marcenaria",nivel: "Avançado"),
        CourseInfo(nome: "hhh", nota: 5.5, image: UIImage(named: "TrilhaTeste"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], feito: false, trilha: "Marcenaria",nivel: "Proficiente")
    ]
    
    

    func SortCurso(trilha: String){ // chama uma vez na hora de popular collection
        cursosPossiveis.removeAll()
        for curso in cursos{
            if curso.trilha == trilha{
                cursosPossiveis.append(curso)
            }
        }
        print(cursosPossiveis.count)
        print("cff")
    }
    
    func SortDific(cursosPossiveis: [CourseInfo], nivel:String)->[CourseInfo]{ // chama na hora de popuklar  toda section
        var cursos = [CourseInfo]()
        for curso in cursosPossiveis{
            if curso.nivel == nivel{
                cursos.append(curso)
            }
        }
        return cursos
    }
    
    func VerificaCompleto(curso: CourseInfo) -> Bool
    {
        for projeto in Model.shared.cursosCompletos
        {
            if (projeto.nome == curso.nome)
            {
                return true
            }
        }
        return false
    }
    func defaulting(){
        let defaults = UserDefaults.standard
        defaults.set(Model.shared.userID, forKey: "UID")
    }
}



