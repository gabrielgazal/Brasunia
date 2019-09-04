//
//  QuizViewController.swift
//  Brasunia
//
//  Created by Kevin Ribeiro on 26/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class MinhasTrilhasViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var minhasTrilhasCollectionView: UICollectionView!
    
    @IBOutlet weak var nometrilhaLabel: UILabel!

//    var trail:String = "Costura"
    var trail: String = ""
    var trilha:String = ""
    
    var trilhas: [[CourseInfo]] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minhasTrilhasCollectionView.delegate = self
        minhasTrilhasCollectionView.dataSource = self
//        trilha = Model.shared.trilhas[trail]

    }
    
    override func viewWillAppear(_ animated: Bool) {
        trilhas.removeAll()
        Model.shared.SortCurso(trilha: trail)

        trilhas.append(Model.shared.SortDific(cursosPossiveis: Model.shared.cursosPossiveis, nivel: "Novato"))
        trilhas.append(Model.shared.SortDific(cursosPossiveis: Model.shared.cursosPossiveis, nivel: "Intermediário"))
        trilhas.append(Model.shared.SortDific(cursosPossiveis: Model.shared.cursosPossiveis, nivel: "Avançado"))
        trilhas.append(Model.shared.SortDific(cursosPossiveis: Model.shared.cursosPossiveis, nivel: "Proficiente"))
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return trilhas.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return trilhas[section].count
        
    }
    

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let curso  = trilhas[indexPath.section][indexPath.row]
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MinhasTrilhasCollectionCell", for: indexPath) as! MinhasTrilhasCollectionViewCell
            print(curso.nome)
        
            cell.CellImage?.image = curso.image
            cell.CellLabel?.text = curso.nome
        
            return cell
        
    }
    
    //Aqui é a configuração do espaçamento da collection//
    
    let spacingCell : CGFloat = round(0.1 * UIScreen.main.bounds.width)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        if collectionView.tag == 1 {
            return spacingCell/2
        }else{
            return spacingCell/2
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        if collectionView.tag == 1 {
            return spacingCell/2
        }else{
            return spacingCell/2
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        if collectionView.tag == 1 {
            return UIEdgeInsets(top: spacingCell, left: spacingCell, bottom: spacingCell, right: spacingCell)
        }else{
            return UIEdgeInsets(top: spacingCell/2, left: spacingCell/2, bottom: spacingCell/2, right: spacingCell/2)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width : CGFloat = UIScreen.main.bounds.width - spacingCell/2
        let height : CGFloat = width
        
        if collectionView.tag == 1 {
            return CGSize(width: width, height: height)
        }else{
            return CGSize(width: width/3, height: height/5)
        }
    }
    
    
    
    
}
