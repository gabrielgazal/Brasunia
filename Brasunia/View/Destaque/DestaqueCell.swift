//
//  DestaqueCell.swift
//  Brasunia
//
//  Created by Lary Tertuliano on 23/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class DestaqueCell: UICollectionViewCell {

    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var destaqueImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(for curso: CourseInfo){
        rateLabel.text = String(describing: curso.nota)
        destaqueImageView.image = curso.image
    }

}
