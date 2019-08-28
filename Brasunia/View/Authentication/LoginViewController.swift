//
//  LoginViewController.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 28/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit
import FirebaseUI

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closePop(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func LoginTap(_ sender: Any) {
        let authUI = FUIAuth.defaultAuthUI()
        guard authUI != nil else{
            return
        }
        
        authUI?.delegate = self
        authUI?.providers = [FUIEmailAuth()]
//        authUI.viewCon


        
        let authViewController = authUI!.authViewController()
        let telaChata = authViewController.navigationController?.children
        
        print("telas",telaChata)
        
        present(authViewController, animated: true, completion: nil)
    }
}

extension LoginViewController: FUIAuthDelegate{
    
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        guard error  == nil else{
            return
        }
//        authDataResult?.user.uid
        
        dismiss(animated: true, completion: nil)
    }
}
