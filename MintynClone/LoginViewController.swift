//
//  LoginViewController.swift
//  MintynClone
//
//  Created by user on 1/14/25.
//
import UIKit

class LoginViewController: UIViewController {
  
    @IBAction func loginPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToHomepage", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

