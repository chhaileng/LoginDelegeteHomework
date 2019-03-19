//
//  LoginViewController.swift
//  Homework2
//
//  Created by Chhaileng Peng on 11/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var delegate: LoginDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.layer.cornerRadius = 5
        passwordTextField.layer.cornerRadius = 5
        
    }
    
    @IBAction func loginTap(_ sender: UIButton) {
        
        if let username = usernameTextField.text, let password = passwordTextField.text {
            for user in UserData.users {
                if username == user["username"] && password == user["password"] {
                    delegate?.didLoginSuccess(username: username)
                    dismiss(animated: true, completion: nil)
                    break
                }
            }
        }
        
    }
    
    @IBAction func signupTap(_ sender: UIButton) {
        let signupVC = self.storyboard?.instantiateViewController(withIdentifier: "signupStoryboard") as! SignUpViewController
        present(signupVC, animated: true, completion: nil)
    }
    
}
