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
        CourseInfo(nome: "Como fazer uma Banqueta", nota: 5.5, image: UIImage(named: "Banqueta"), habilidades: ["pregar","parafusar","serrar"], ferramentas: ["Martelo","Serra","Esquadro","Trena","Furadeira","Chave de fenda"], materiais: ["Madeira","Parafusos"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
            CourseInfo(nome: "Como fazer uma barra", nota: 5.5, image: UIImage(named: "barra"), habilidades: ["barra","costura simples"],ferramentas: ["Agulha","Alfinetes" ], materiais: ["Calça com a barra a fazer","Linha"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Pianinho", nota: 5.5, image: UIImage(named: "Pianinho"), habilidades: ["programação","montagem de circuitos"],ferramentas: ["Ferro de Solda","Computador"], materiais: ["Arduino UNO","Placa perfurada","Jumpers","Chaves táteis","Resistores de 10K Ohms","Buzzer"], feito: false, trilha: "Eletrônica",nivel: "Intermediário",image2: UIImage(named: "eletro2")),
            CourseInfo(nome: "Criação de classes", nota: 5.5, image: UIImage(named: "classTut"), habilidades: ["programação"],ferramentas: ["Computador"], materiais: ["Xcode ou IDE de escolha"], feito: false, trilha: "Programação",nivel: "Intermediário",image2: UIImage(named: "prog2")),
            
            
            CourseInfo(nome: "Como colocar  bolso em camisa", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["ajuste","bainha"],ferramentas: ["maquina","tesoura"], materiais: ["camisa","tecido","linha"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Como apertar  cintura de calça", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Cachecol infantil", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Ecobag", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Fronha de almofada", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Gravata borboleta", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Estojo com zíper", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Avental", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "Intermediário")),
            CourseInfo(nome: "Saia circular", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Vestido", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Bicho de pelúcia", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Camiseta", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Calcá de moletom", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Jaqueta", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Shorts", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Collant", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Casaco moletom", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Calça de alfaiataria", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Proficiente",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Biquini", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Proficiente",image2: UIImage(named: "costura2")),
            CourseInfo(nome: "Vestido de festa", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Proficiente",image2: UIImage(named: "costura2")),
            
        
        
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



