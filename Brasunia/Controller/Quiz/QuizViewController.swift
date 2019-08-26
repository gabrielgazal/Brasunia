//
//  QuizViewController.swift
//  Brasunia
//
//  Created by Kevin Ribeiro on 26/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var quizLabelTitle: UILabel!
    @IBOutlet weak var quizTextViewSubTitle: UITextView!
    @IBOutlet weak var quizTextViewSecondSubTitle: UITextView!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var quizButtonKnowMore: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        quizLabelTitle!.text = "Escolha interesses:"
        quizTextViewSubTitle!.text = "Esse quiz foi desenhado para que a gente possa conhecer mais sobre os seus interesses e te sugerir conteúdo personalizado!"
        quizTextViewSecondSubTitle!.text = "Habilidades que eu gostaria de aprender"
        quizButton.titleLabel!.text = "Enviar"
        quizButtonKnowMore.titleLabel!.text = "Saber mais sobre as trilhas"
        
    }
    
    
    
    
}
