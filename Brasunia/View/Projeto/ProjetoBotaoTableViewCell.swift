//
//  ProjetoBotaoTableViewCell.swift
//  Brasunia
//
//  Created by Kelvin Javorski Soares on 28/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class ProjetoBotaoTableViewCell: UITableViewCell {

    @IBOutlet weak var finalizaProjeto: UIButton!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var imgPassoapasso: UIImageView!
    @IBOutlet weak var explanation: UILabel!
    @IBOutlet weak var quadradoPreto: UIView!
    @IBOutlet weak var passoAPassoLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
