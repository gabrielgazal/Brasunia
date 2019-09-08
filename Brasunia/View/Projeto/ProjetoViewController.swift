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
    
    var curso: CourseInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        table.delegate = self
        table.dataSource = self
        
        if curso != nil{
            
        }
    
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear

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
            cell.imgProjeto.image = curso!.image
            cell.nomeProjetoTxt?.text = curso!.nome
            let nota = Float(curso!.nota)
            cell.notaProjetoTxt?.text = String(nota)
            
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "listasCell", for: indexPath) as! ProjetoListasTableViewCell
            cell.ferramentasTxt.text = "Ferramentas"
            cell.materiaisTxt.text = "Materiais"
            cell.habilidadesTxt.text = "Habilidades"
//            cell.itensFerramentasTxt.text = curso?.ferramentas
//            cell.itensMateriaisTxt.text = curso?.materiais
//            cell.itensHabilidadesTxt = curso?.habilidades
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "botaoCell", for: indexPath) as! ProjetoBotaoTableViewCell
            return cell
            
        default:
            return UITableViewCell()
        }
    }

    @IBAction func projetoFinalizadoPressed(_ sender: Any) {
        if(!Model.shared.VerificaCompleto(curso: curso!))
        {
            Model.shared.cursosCompletos.append(curso!)
            print(Model.shared.cursosCompletos.count)
            performSegue(withIdentifier: "dontut", sender: self)
        } else{
//            performSegue(withIdentifier: "done", sender: self)
        }
        
    }
    
    
}
