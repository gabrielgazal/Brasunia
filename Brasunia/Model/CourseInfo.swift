//
//  File.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 30/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import Foundation
import UIKit

class CourseInfo{
    internal init(nome: String, nota: CGFloat, image: UIImage?, habilidades: [String], ferramentas: [String], materiais: [String], feito: Bool, trilha: String, nivel: String) {
        self.nome = nome
        self.nota = nota
        self.image = image
        self.habilidades = habilidades
        self.ferramentas = ferramentas
        self.materiais = materiais
        self.feito = feito
        self.trilha = trilha
        self.nivel = nivel
    }
    
    

    var nome: String
    var nota: CGFloat
    var image: UIImage!
    var habilidades: [String]
    var ferramentas: [String]
    var materiais: [String]
    var feito: Bool
    var trilha: String
    var nivel: String
    
    
   
}

