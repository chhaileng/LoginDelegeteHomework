//
//  ViewController.swift
//  Homework2
//
//  Created by Chhaileng Peng on 11/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    var isLogin: Bool = false
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBAction func loginTap(_ sender: UIButton) {
        if isLogin {
            welcomeLabel.text = ""
            isLogin = false
            loginButton.setTitle("Login", for: .normal)
            loginButton.backgroundColor = UIColor.blue
        } else {
            let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "loginStoryboard") as! LoginViewController
            loginVC.delegate = self
            present(loginVC, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = ""
        loginButton.backgroundColor = UIColor.blue
    }


}

extension ViewController: LoginDelegate {
    func didLoginSuccess(username: String) {
        welcomeLabel.text = "Welcome \(username)"
        isLogin = true
        loginButton.setTitle("Logout", for: .normal)
        loginButton.backgroundColor = UIColor.red
    }
}

