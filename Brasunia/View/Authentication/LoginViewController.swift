//
//  LoginViewController.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 28/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit
import FirebaseUI
import Foundation

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
        
        
        present(authViewController, animated: true, completion: nil)
    }
}

extension LoginViewController: FUIAuthDelegate{
    
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        guard error  == nil else{
            return
        }
        let ref  = Firestore.firestore()
        let userEmail = authDataResult?.user.email
        let userUID = authDataResult?.user.uid

        let userInfo = UserInfoClass(databaseID: userUID!, email: userEmail!)
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(userInfo)
            let dict = try JSONSerialization.jsonObject(with: data) as! [String:Any]
            ref.collection("users").document(userUID!).setData(dict)
            Model.shared.userID = userUID!
        }catch{
            print("deu merda")
        }
        
        dismiss(animated: true, completion: nil)
    }
}
