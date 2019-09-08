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
    var userName = ""
    var trilhas: [String] = ["Costura","Eletrônica","Marcenaria","Programação"]
    var cursosPossiveis: [CourseInfo] = []
    var cursosFilt: [CourseInfo]  = []
    var cursosCompletos : [CourseInfo] = []
    var trilhaAtual: String = ""
    var habilidadesAdquiridas: [String] = []
    

    var cursos: [CourseInfo] = [
        CourseInfo(nome: "kelvin", nota: 5.5, image: UIImage(named: "Bitmap"), habilidades: ["kelvin","gazal","gabs","kevin","lary"], ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Jose", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Louro", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Louro2", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Louro3", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Louro4", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Louro5", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Louro6", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Proficiente",image2: UIImage(named: "costura2")),
        
        
        CourseInfo(nome: "111", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Novato",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "222", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Novato",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "333", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Novato",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "444", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Intermediário",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "555", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Intermediário",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "666", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Avançado",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "777", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Avançado",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "888", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Proficiente",image2: UIImage(named: "eletro2")),
        
        
        CourseInfo(nome: "aaa", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "bbb", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "ccc", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "ddd", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Intermediário",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "eee", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Intermediário",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "fff", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "ggg", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "hhh", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Proficiente",image2: UIImage(named: "marcenaria2")),
        
        CourseInfo(nome: "zzz", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Novato",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "xxx", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Novato",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "yyy", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Novato",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "kkk", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Intermediário",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "jjj", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Intermediário",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "iii", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Avançado",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "lll", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Avançado",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "ttt", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Proficiente",image2: UIImage(named: "prog2"))
    ]
        
    

    func SortCurso(trilha: String){ // chama uma vez na hora de popular collection
        cursosPossiveis.removeAll()
        for curso in cursos{
            if curso.trilha == trilha{
                cursosPossiveis.append(curso)
            }
        }
    }
    
    func SortCursoTrilha(listaCursos: [CourseInfo], trilha: String) -> Int{ // chama uma vez na hora de popular collection
        var cursosTrilha : [CourseInfo] = []
        for curso in listaCursos{
            if curso.trilha == trilha{
                cursosTrilha.append(curso)
            }
        }
        return cursosTrilha.count
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



