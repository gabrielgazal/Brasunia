//
//  ViewController.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 22/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "DestaqueTableViewCell", bundle: nil), forCellReuseIdentifier: "cellDestaque")
        tableView.register(UINib(nibName: "TrilhasTableViewCell", bundle: nil), forCellReuseIdentifier: "cellTrilhas")
        tableView.register(UINib(nibName: "PlanosTableViewCell", bundle: nil), forCellReuseIdentifier: "cellPlanos")
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png"))
        self.view.backgroundColor  =  UIColor(patternImage: UIImage(named: "fundo")!)
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.isTranslucent = true

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if UserDefaults.standard.bool(forKey: "hasViewedWalkthrough") {
            return
        }
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        UserDefaults.standard.set(true, forKey: "hasViewedWalkthrough")
        if let walkthroughViewController = storyboard.instantiateViewController(withIdentifier: "WalkthroughViewController") as? WalkthroughViewController {
            present(walkthroughViewController, animated: true, completion: nil)
        
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellDestaque", for: indexPath) as! DestaqueTableViewCell
            cell.parent = self
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellTrilhas", for: indexPath) as! TrilhasTableViewCell
            cell.parent = self
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellPlanos", for: indexPath) as! PlanosTableViewCell
            cell.parent = self
            return cell
        default:
            return UITableViewCell()
        }

    }

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let heights : [CGFloat] = [0.56, 0.48, 0.6]
        return UIScreen.main.bounds.height * heights[indexPath.row]
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNonzeroMagnitude
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat.leastNonzeroMagnitude
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "projetoID", let vc = segue.destination as? ProjetoViewController{
            vc.curso = Model.shared.cursos[sender as! Int]
        }
        if segue.identifier == "trilhaID", let vc = segue.destination as? MinhasTrilhasViewController{
            vc.trail = Model.shared.trilhas[sender as! Int]
            

        }
    }
    
}

