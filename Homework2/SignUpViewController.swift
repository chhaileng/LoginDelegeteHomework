//
//  SignUpViewController.swift
//  Homework2
//
//  Created by Chhaileng Peng on 11/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.layer.cornerRadius = 5
        passwordTextField.layer.cornerRadius = 5
        confirmPasswordTextField.layer.cornerRadius = 5
    }
    
    @IBAction func signupTap(_ sender: UIButton) {
        if let username = usernameTextField.text,
            let password = passwordTextField.text,
            let confirmPassword = confirmPasswordTextField.text {
            
            if password == confirmPassword {
                UserData.users.append(["username" : username, "password": password])
                dismiss(animated: true, completion: nil)
            }
        }
    
    }
    
}
