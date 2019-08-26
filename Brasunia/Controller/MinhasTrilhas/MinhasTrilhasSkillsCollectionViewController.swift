//
//  QuizCollectionViewControllerV2.swift
//  Brasunia
//
//  Created by Kevin Ribeiro on 23/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MinhasTrilhasCollectionCell"

class MinhasTrilhasSkillsCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var minhasTrilhasSkillsCollectionView: UICollectionView!
    
    //Aqui estão os dados que serão *recebidos* pelo banco de dados//
    
    var minhasTrilhasSkillsCellView : [UIView]?
    var minhasTrilhasSkillsCellLabel : [UILabel]?
    
    ////
    
    // Aqui estão os dados que seão *enviados* para o banco de dados//
    
    ////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minhasTrilhasSkillsCollectionView.dataSource = self
        minhasTrilhasSkillsCollectionView.delegate = self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return minhasTrilhasSkillsCellView!.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MinhasTrilhasSkillsCollectionCell", for: indexPath) as! MinhasTrilhasSkillsCollectionViewCell
        
        cell.CellView? = minhasTrilhasSkillsCellView![indexPath.row]
        cell.CellLabel? = minhasTrilhasSkillsCellLabel![indexPath.row]
        
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
        
        let width : CGFloat = UIScreen.main.bounds.width/5 - spacingCell/2
        let height : CGFloat = width/3
        
        return CGSize(width: width, height: height)
    }
}
