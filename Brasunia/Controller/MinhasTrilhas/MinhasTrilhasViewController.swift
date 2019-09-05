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
    var spacing : CGFloat = 0.03 * UIScreen.main.bounds.width

    var trilhas: [[CourseInfo]] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
    nometrilhaLabel.text = trail
        
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - spacing) / 2.2
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing * 1.5
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: 30)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerView", for: indexPath) as? headerView{
            if indexPath.section == 0 {
            sectionHeader.labelHeader.text = "Novato"
            } else if  indexPath.section == 1{
                sectionHeader.labelHeader.text = "Intermediário"
            }else if  indexPath.section == 2{
                sectionHeader.labelHeader.text = "Avançado"
            }else if  indexPath.section == 3{
                sectionHeader.labelHeader.text = "Proficiente"
            }
            
            return sectionHeader
        }
        return UICollectionReusableView()
    }
    
}
