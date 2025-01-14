//
//  ViewController.swift
//  MintynClone
//
//  Created by user on 1/13/25.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLoginView", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = UIButton(type: .system)
               loginButton.setTitle("Login", for: .normal)
               loginButton.setTitleColor(.white, for: .normal)
               loginButton.layer.cornerRadius = 10
               loginButton.clipsToBounds = true
               addGradientToButton(button: loginButton)
               view.addSubview(loginButton)
               
               // Layout constraints for the button (example)
               loginButton.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                   loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
                   loginButton.widthAnchor.constraint(equalToConstant: 200),
                   loginButton.heightAnchor.constraint(equalToConstant: 50)
               ])
    }
                   
   func addGradientToButton(button: UIButton) {
           let gradientLayer = CAGradientLayer()
           gradientLayer.colors = [UIColor(red: 1, green: 0.8, blue: 0, alpha: 1).cgColor,
                                   UIColor(red: 1, green: 0.6, blue: 0, alpha: 1).cgColor]
           gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
           gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
           gradientLayer.frame = button.bounds
           gradientLayer.cornerRadius = button.layer.cornerRadius
           button.layer.insertSublayer(gradientLayer, at: 0)
       }


}

