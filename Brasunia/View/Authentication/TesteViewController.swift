//
//  TesteViewController.swift
//  Brasunia
//
//  Created by Gabriel Gazal on 29/08/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit
import Firebase

class TesteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Model.shared.userID = "TqxdasPpP9XmAOB2VuVxW0cRxqh2"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Print(_ sender: Any) {
        //
        let db = Firestore.firestore()
        db.collection("users").document(Model.shared.userID).getDocument(){ (querySnapshot, err) in
            
            if let err = err{
                print("fudeu")
            } else{
                do{
                    let document = querySnapshot!.data()
                    let data = try JSONSerialization.data(withJSONObject: document as Any)
                    let decodedUser = try JSONDecoder().decode(UserInfoClass.self, from:  data)
                    print(decodedUser.email)
                } catch{
                    print("erro")
                }
            }
        }
    }
    
}
