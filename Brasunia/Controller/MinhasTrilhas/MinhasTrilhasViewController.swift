//
//  QuizViewController.swift
//  Brasunia
//
//  Created by Kevin Ribeiro on 26/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class MinhasTrilhasViewController: UIViewController {
    
    @IBOutlet weak var minhasTrilhasLabelTitle: UILabel!
    @IBOutlet weak var minhasTrilhasLabelSubTitle: UILabel!
    @IBOutlet weak var minhasTrilhasButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minhasTrilhasLabelTitle!.text = "Minhas trilhas"
        minhasTrilhasLabelSubTitle!.text = "Próximos passos"
        minhasTrilhasButton.titleLabel!.text = "Trilha completa"
        
    }
    
    
    
    
}
