//
//  QuizCollectionViewControllerV2.swift
//  Brasunia
//
//  Created by Kevin Ribeiro on 23/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

private let reuseIdentifier = "QuizCollectionCell"

class QuizCollectionViewControllerV2: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var quizcollectionView: UICollectionView!
    
    //Aqui estão os dados que serão *recebidos* pelo banco de dados//
    
    var quizCellImage : [UIImage]?
    var quizCellText : [String]?
    
    ////
    
    // Aqui estão os dados que seão *enviados* para o banco de dados//
    
    ////

    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizcollectionView.dataSource = self
        quizcollectionView.delegate = self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return quizCellImage!.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
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
