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
}
