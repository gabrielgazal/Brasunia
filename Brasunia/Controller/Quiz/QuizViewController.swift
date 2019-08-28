//
//  QuizViewController.swift
//  Brasunia
//
//  Created by Kevin Ribeiro on 26/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var quizLabelTitle: UILabel!
    @IBOutlet weak var quizTextViewSubTitle: UITextView!
    @IBOutlet weak var quizLabelSecondSubTitle: UILabel!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var quizButtonKnowMore: UIButton!
    
    @IBOutlet weak var quizcollectionView: UICollectionView!
    
    //Aqui estão os dados que serão *recebidos* pelo banco de dados//
    
    var quizCellImage : [UIImage]?
    var quizCellText : [String]?
    
    ////
    
    // Aqui estão os dados que seão *enviados* para o banco de dados//
    
    var quizAffinities : [String]?
    
    ////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizcollectionView.dataSource = self
        quizcollectionView.delegate = self

        quizLabelTitle!.text = "Escolha interesses:"
        quizTextViewSubTitle!.text = "Esse quiz foi desenhado para que a gente possa conhecer mais sobre os seus interesses e te sugerir conteúdo personalizado!"
        quizLabelSecondSubTitle!.text = "Habilidades que eu gostaria de aprender"
        quizButton.titleLabel!.text = "Enviar"
        quizButtonKnowMore.titleLabel!.text = "Saber mais sobre as trilhas"
        
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let aux = quizcollectionView.cellForItem(at: indexPath) as! QuizCollectionViewCell
        if quizcollectionView.cellForItem(at: indexPath)!.isSelected {
            quizcollectionView.cellForItem(at: indexPath)!.isSelected = false
            
            quizAffinities?.remove(at: indexPath.row)
        }
        else {
            quizcollectionView.cellForItem(at: indexPath)!.isSelected = true
            
            quizAffinities?.append(aux.CellLabel!.text!)
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return quizCellImage!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCollectionCell", for: indexPath) as! QuizCollectionViewCell
        
        cell.CellImage?.image = quizCellImage![indexPath.row]
        cell.CellLabel?.text = quizCellText![indexPath.row]
        
        return cell
    }
    
    //Aqui é a configuração do espaçamento da collection//
    
    let spacingCell : CGFloat = round(0.1 * UIScreen.main.bounds.width)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacingCell/2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacingCell/2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: spacingCell, left: spacingCell, bottom: spacingCell, right: spacingCell)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width : CGFloat = UIScreen.main.bounds.width/3 - (spacingCell + spacingCell/2)
        let height : CGFloat = width
        
        return CGSize(width: width, height: height)
    }
    
    
    
    
}
