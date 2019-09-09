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
            CourseInfo(nome: "Como fazer uma barra", nota: 5.5, image: UIImage(named: "barra"), habilidades: ["barra","costura simples"],ferramentas: ["Agulha","Alfinetes" ], materiais: ["Calça com a barra a fazer","Linha"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "0")),
            CourseInfo(nome: "Pianinho", nota: 5.5, image: UIImage(named: "Pianinho"), habilidades: ["programação","montagem de circuitos"],ferramentas: ["Ferro de Solda","Computador"], materiais: ["Arduino UNO","Placa perfurada","Jumpers","Chaves táteis","Resistores de 10K Ohms","Buzzer"], feito: false, trilha: "Eletrônica",nivel: "Intermediário",image2: UIImage(named: "eletro2")),
            CourseInfo(nome: "Criação de classes", nota: 5.5, image: UIImage(named: "classTut"), habilidades: ["programação"],ferramentas: ["Computador"], materiais: ["Xcode ou IDE de escolha"], feito: false, trilha: "Programação",nivel: "Intermediário",image2: UIImage(named: "prog2")),
            
            
            CourseInfo(nome: "Como colocar  bolso em camisa", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["ajuste","bainha"],ferramentas: ["maquina","tesoura"], materiais: ["camisa","tecido","linha"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "1")),
            CourseInfo(nome: "Como apertar  cintura de calça", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "2")),
            CourseInfo(nome: "Cachecol infantil", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "3")),
            CourseInfo(nome: "Ecobag", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "4")),
            CourseInfo(nome: "Fronha de almofada", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "5")),
            CourseInfo(nome: "Gravata borboleta", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Novato",image2: UIImage(named: "6")),
            CourseInfo(nome: "Estojo com zíper", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "8")),
            CourseInfo(nome: "Avental", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "9")),
            CourseInfo(nome: "Saia circular", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "1.0")),
            CourseInfo(nome: "Vestido", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "1.4")),
            CourseInfo(nome: "Bicho de pelúcia", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "1.3")),
            CourseInfo(nome: "Camiseta", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "1.2")),
            CourseInfo(nome: "Calça de moletom", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Intermediário",image2: UIImage(named: "1.7")),
            CourseInfo(nome: "Jaqueta", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "1.6")),
            CourseInfo(nome: "Shorts", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "1.8")),
            CourseInfo(nome: "Collant", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "1.10")),
            CourseInfo(nome: "Casaco moletom", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Avançado",image2: UIImage(named: "1.9")),
            CourseInfo(nome: "Calça de alfaiataria", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Proficiente",image2: UIImage(named: "2.3")),
            CourseInfo(nome: "Biquini", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Proficiente",image2: UIImage(named: "2.2")),
            CourseInfo(nome: "Vestido de festa", nota: 5.5, image: UIImage(named: "TesteCostura"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Costura",nivel: "Proficiente",image2: UIImage(named: "2.4")),
            
        
        
        CourseInfo(nome: "Circuito  Flip Flop", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Novato",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Aspirador", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Novato",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Potenciômetro + buzzer", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Novato",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Introdução aos componentes", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Novato",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Soldagem", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Intermediário",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Circuitos integrados", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Intermediário",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Oscilador  1", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Intermediário",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Arduino", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Intermediário",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Servo Motores", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Intermediário",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Módulos Relê", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Avançado",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Módulo motor DC", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Avançado",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Módulo RFID", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Avançado",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Automação de luzes", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Proficiente",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Rega de jardim", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Proficiente",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Módulo WiFi e BLuetooth", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Proficiente",image2: UIImage(named: "eletro2")),
        CourseInfo(nome: "Integração hardware + app", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Eletrônica",nivel: "Proficiente",image2: UIImage(named: "eletro2")),
        
        
        CourseInfo(nome: "Cavalete", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Nicho", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Prateleiras", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Moldes para gesso", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Porta lápis", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Arranhador para gato", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Novato",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Cabeceira de cama", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Intermediário",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Criado Mudo", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Intermediário",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Sistemas de encaixe", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Intermediário",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Estante", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Intermediário",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Revisteiro", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Intermediário",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Mesa", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "PLano de corte CNC", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Centro de mesa", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Montagem de móveis", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Cadeira", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Tipos de madeira", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Tipos de corte", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Aplicação de verniz", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Avançado",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Armárion de banheiro", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Proficiente",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Armári de cozinha", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Proficiente",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Sofá", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Proficiente",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Bistrô", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Proficiente",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Closet", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Proficiente",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Rendering 3D", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Proficiente",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Cabo de faca", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Proficiente",image2: UIImage(named: "marcenaria2")),
        CourseInfo(nome: "Móveis sob medida", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Marcenaria",nivel: "Proficiente",image2: UIImage(named: "marcenaria2")),
        
        
        CourseInfo(nome: "Variável e constante", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Novato",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Condicional", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Novato",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Repetição", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Novato",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Exercícios 1", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Novato",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Construindo o primeiro algoritmo", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Intermediário",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Funções", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Intermediário",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Recursão", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Intermediário",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Construindo um menu", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Intermediário",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Objetos", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Avançado",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Linguagem de máquina", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Avançado",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Front-end", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Avançado",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Fazer um site", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Avançado",image2: UIImage(named: "prog2")),
        CourseInfo(nome: "Aplicativo iOS", nota: 5.5, image: UIImage(named: "TestImage"), habilidades: ["kelvin","gazal","gabs","kevin","lary"],ferramentas: ["martelo","serra"], materiais: ["pao","jiose"], feito: false, trilha: "Programação",nivel: "Proficiente",image2: UIImage(named: "prog2"))
    ]
        
    

    func SortCurso(trilha: String){ // chama uma vez na hora de popular collection
        cursosPossiveis.removeAll()
        for curso in cursos{
            if curso.trilha == trilha{
                cursosPossiveis.append(curso)
            }
        }
    }
    
    func Sort(trilha: String) -> [CourseInfo]{ // chama uma vez na hora de popular collection
        var cursosTrilha : [CourseInfo] = []
        for curso in cursos{
            if curso.trilha == trilha{
                cursosTrilha.append(curso)
            }
        }
        return cursosTrilha
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



