//
//  ProjetoListasTableViewCell.swift
//  Brasunia
//
//  Created by Kelvin Javorski Soares on 28/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class ProjetoListasTableViewCell: UITableViewCell {

    @IBOutlet weak var ferramentasTxt: UILabel!
    @IBOutlet weak var itensFerramentsTxt: UILabel!
    @IBOutlet weak var materiaisTxt: UILabel!
    @IBOutlet weak var itensMateriaisTxt: UILabel!
    @IBOutlet weak var habilidadesTxt: UILabel!
    @IBOutlet weak var itensHabilidadesTxt: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
