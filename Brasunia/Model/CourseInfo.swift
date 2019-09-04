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
    internal init(nome: String, nota: CGFloat, image: UIImage?, habilidades: [String], feito: Bool, trilha: String, nivel: String) {
        self.nome = nome
        self.nota = nota
        self.image = image
        self.habilidades = habilidades
        self.feito = feito
        self.trilha = trilha
        self.nivel = nivel
    }
    

    var nome: String
    var nota: CGFloat
    var image: UIImage!
    var habilidades: [String]
    var feito: Bool
    var trilha: String
    var nivel: String
    
    
   
}

