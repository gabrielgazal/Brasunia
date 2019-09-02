//
//  JornadaInfo.swift
//  Brasunia
//
//  Created by Kelvin Javorski Soares on 01/09/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import Foundation
import UIKit

class JornadaInfo {
    internal init(trilha: String, icone: String, conquistas: Int, habilidades: Int, x: Int, y: Int, cor: UIColor) {
        self.trilha = trilha
        self.icone = icone
        self.conquistas = conquistas
        self.habilidades = habilidades
        self.x = x
        self.y = y
        self.cor = cor
    }


    let trilha : String
    let icone : String
    let conquistas : Int
    let habilidades : Int
    let x : Int
    let y : Int
    let cor : UIColor
    
}
