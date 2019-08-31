//
//  ProjetoViewController.swift
//  Brasunia
//
//  Created by Kelvin Javorski Soares on 29/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class ProjetoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "titleCell", for: indexPath) as! ProjetoTitleTableViewCell
            /*             cell.nomeProjetoTxt.text = "Projeto"
             cell.imgProjeto.image = UIImage(named: "x")
             cell.notaProjetoTxt.text = "5.0"
             cell.labelTxt.text = "Você precisará de:"
             cell.infoTxt.text = "Info"*/
            
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "listasCell", for: indexPath) as! ProjetoListasTableViewCell
            cell.ferramentasTxt.text = "Ferramentas"
            cell.itensFerramentasTxt.text = "Martelo\nPanela\nTesoura"
            cell.materiaisTxt.text = "Materiais"
            cell.itensMateriaisTxt.text = "Prego\nOvo\nPapel"
            cell.habilidadesTxt.text = "Habilidades"
            cell.itensHabilidadesTxt.text = "teste\nteste\nteste"
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "botaoCell", for: indexPath) as! ProjetoBotaoTableViewCell
            return cell
            
        default:
            return UITableViewCell()
        }
    }

}
