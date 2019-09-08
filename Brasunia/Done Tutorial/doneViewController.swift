//
//  doneViewController.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 08/09/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class doneViewController: UIViewController {

    @IBOutlet weak var popdismiss: UIButton!
    @IBAction func dismisPOP(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
