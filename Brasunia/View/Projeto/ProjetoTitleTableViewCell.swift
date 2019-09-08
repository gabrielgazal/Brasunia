//
//  ProjetoTitleTableViewCell.swift
//  Brasunia
//
//  Created by Kelvin Javorski Soares on 28/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class ProjetoTitleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeProjetoTxt: UILabel!
    @IBOutlet weak var imgProjeto: UIImageView!
    @IBOutlet weak var notaProjetoTxt: UILabel!
    @IBOutlet weak var labelTxt: UILabel!
    @IBOutlet weak var infoTxt: UILabel!
    @IBOutlet weak var formaView: DesignableView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
