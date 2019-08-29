//
//  QuizViewController.swift
//  Brasunia
//
//  Created by Kevin Ribeiro on 26/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class MinhasTrilhasViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var minhasTrilhasLabelTitle: UILabel!
    @IBOutlet weak var minhasTrilhasLabelSubTitle: UILabel!
    @IBOutlet weak var minhasTrilhasButton: UIButton!
    @IBOutlet weak var minhasTrilhasMoreButton: UIButton!
    
    @IBOutlet weak var minhasTrilhasCollectionView: UICollectionView!
    
    @IBOutlet weak var minhasTrilhasSkillsCollectionView: UICollectionView!
    
    //Aqui estão os dados que serão *recebidos* pelo banco de dados//
    
    var minhasTrilhasCellImage : [UIImage]?
    var minhasTrilhasCellText : [String]?
    var minhasTrilhasCellTag0 : [UIImage]?
    var minhasTrilhasCellTag1 : [UIImage]?
    var minhasTrilhasCellTag2 : [UIImage]?
    
    var minhasTrilhasSkillsCellView : [UIView]?
    var minhasTrilhasSkillsCellLabel : [UILabel]?
    
    ////
    
    // Aqui estão os dados que seão *enviados* para o banco de dados//
    
    ////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minhasTrilhasLabelTitle!.text = "Minhas trilhas"
        minhasTrilhasLabelSubTitle!.text = "Próximos passos"
        minhasTrilhasButton.titleLabel!.text = "Trilha completa"
        
        minhasTrilhasCollectionView.dataSource = self
        minhasTrilhasCollectionView.delegate = self
        
        minhasTrilhasSkillsCollectionView.dataSource = self
        minhasTrilhasSkillsCollectionView.delegate = self
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView.tag == 1 {
            return minhasTrilhasCellImage!.count
        }else{
            return minhasTrilhasSkillsCellView!.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MinhasTrilhasCollectionCell", for: indexPath) as! MinhasTrilhasCollectionViewCell
            
            cell.CellImage?.image = minhasTrilhasCellImage![indexPath.row]
            cell.CellLabel?.text = minhasTrilhasCellText![indexPath.row]
            
            if minhasTrilhasCellTag0?[indexPath.row] != nil{
                cell.CellTag0?.image = minhasTrilhasCellTag0![indexPath.row]
            }
            if minhasTrilhasCellTag1?[indexPath.row] != nil{
                cell.CellTag1?.image = minhasTrilhasCellTag1![indexPath.row]
            }
            if minhasTrilhasCellTag2?[indexPath.row] != nil{
                cell.CellTag2?.image = minhasTrilhasCellTag2![indexPath.row]
            }
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MinhasTrilhasSkillsCollectionCell", for: indexPath) as! MinhasTrilhasSkillsCollectionViewCell
            
            cell.CellView? = minhasTrilhasSkillsCellView![indexPath.row]
            cell.CellLabel? = minhasTrilhasSkillsCellLabel![indexPath.row]
            
            return cell
        }
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
