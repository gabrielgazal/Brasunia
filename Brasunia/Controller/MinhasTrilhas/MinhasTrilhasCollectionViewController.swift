//
//  QuizCollectionViewControllerV2.swift
//  Brasunia
//
//  Created by Kevin Ribeiro on 23/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MinhasTrilhasCollectionCell"

class MinhasTrilhasCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var minhasTrilhasCollectionView: UICollectionView!
    
    //Aqui estão os dados que serão *recebidos* pelo banco de dados//
    
    var minhasTrilhasCellImage : [UIImage]?
    var minhasTrilhasCellText : [String]?
    var minhasTrilhasCellTag0 : [UIImage]?
    var minhasTrilhasCellTag1 : [UIImage]?
    var minhasTrilhasCellTag2 : [UIImage]?
    
    ////
    
    // Aqui estão os dados que seão *enviados* para o banco de dados//
    
    ////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minhasTrilhasCollectionView.dataSource = self
        minhasTrilhasCollectionView.delegate = self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return minhasTrilhasCellImage!.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
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
        
        let width : CGFloat = UIScreen.main.bounds.width - spacingCell/2
        let height : CGFloat = width
        
        return CGSize(width: width, height: height)
    }
}
