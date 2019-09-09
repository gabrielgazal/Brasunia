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
    //Imagens de cada etapa do passo a passo
    var PaPimg = [UIImage(named: "Bitmap"), UIImage(named: "Bitmap"), UIImage(named: "Bitmap")]
    //Texto explicando cada etapa do passo a passo
    var PaPtext = ["Passo um: Coloque o pao em cima da mesa e passe margarina nele.", "Passo um: Coloque o pao em cima da mesa e passe margarina nele.","Passo um: Coloque o pao em cima da mesa e passe margarina nele."]
    //Subtitulo de cada etapa
    var PaPsubtitle = ["Passo 1", "Passo 2", "Passo 3"]
    //Quantidade de etapas
    let qtdPassos = 3
    //Categoria das listas
    let listaTitle = ["Ferramentas", "Materiais"]
    
    
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1{
            return listaTitle.count
        }
        if section == 2{
            return qtdPassos
        }
        return 1
    }
    
        
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "titleCell", for: indexPath) as! ProjetoTitleTableViewCell
            cell.imgProjeto.image = curso!.image
            cell.nomeProjetoTxt?.text = curso!.nome
            let nota = Float(curso!.nota)
            cell.notaProjetoTxt?.text = String(nota)
            cell.formaView.cornerRadius = 24
            cell.formaView.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
            
            return cell
            
               //Celula das Listas
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "listasCell", for: indexPath) as! ProjetoListasTableViewCell
            cell.itemLabel.text = listaTitle[indexPath.row]
            switch (indexPath.row)
            {
                //Preenche as infos, label e view das ferramentas
            case 0:
                cell.listaLabel.text = adicionaBarraNStrings(lista: curso!.ferramentas)
                break
                
                //Preenche as infos, label e view dos materiais
            case 1:
                var listaMateriais = adicionaBarraNStrings(lista: curso!.materiais)
                //Adiciona mais uma linha a string pq a constrain é bugada #CHUNCHO
                listaMateriais += "\n"
                cell.listaLabel.text = listaMateriais
                break
                
            default:
                break
            }
            return cell
            
            //Celula do Passo a Passo
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "botaoCell", for: indexPath) as! ProjetoBotaoTableViewCell
            let etapa = indexPath.row
            cell.subTitle.text = PaPsubtitle[etapa]
            cell.imgPassoapasso.image = PaPimg[etapa]
            cell.explanation.text = PaPtext[etapa]
            cell.finalizaProjeto.isHidden = true
            cell.finalizaProjeto.layer.cornerRadius = 30
            //Verifica se é a ultima etapa e insere o botao de finalizar projeto
            if (etapa == qtdPassos - 1)
            {
                cell.finalizaProjeto.isHidden = false
            }
            if (etapa != 0)
            {
                cell.quadradoPreto.isHidden = true
                cell.passoAPassoLbl.isHidden = true
            }
            return cell
            
        default:
            return UITableViewCell()
        }
    }

    func adicionaBarraNStrings(lista : [String]) -> String
    {
        var string = ""
        for (index, text) in lista.enumerated()
        {
            if (index == lista.endIndex - 1)
            {
                string += "\(text)"
                break
            }
            string += "\(text)\n"
        }
        return string
        
    }
    
    @IBAction func projetoFinalizadoPressed(_ sender: Any) {
        if(!Model.shared.VerificaCompleto(curso: curso!))
        {
            Model.shared.cursosCompletos.append(curso!)
            UserDefaults.standard.set(Model.shared.cursosCompletos, forKey: "cursosCompletos")
            print(Model.shared.cursosCompletos.count)
            //performSegue(withIdentifier: "dontut", sender: self)
        } else{
//            performSegue(withIdentifier: "done", sender: self)
        }
        
    }
    
}
