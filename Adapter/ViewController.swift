//
//  ViewController.swift
//  Adapter
//
//  Created by Владимир Киселев on 02.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var authService: AuthenticationService = GoogleAuthentocatorAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUser(email: "test@example.com", password: "pass12345")
    }
    
    func createUser(email: String, password: String){
        authService.login(email: email, password: password) { (user, token )in
            print("Auth succeeded: \(user.email), \(token.value)")
            
        } failure: { (error) in
            if let error = error{
                print(error.localizedDescription)
            }
        }

    }

}

