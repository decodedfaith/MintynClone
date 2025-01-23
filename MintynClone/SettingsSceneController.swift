//
//  SettingsSceneController.swift
//  MintynClone
//
//  Created by user on 1/23/25.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var logoutTile: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(logoutTapped))
        logoutTile.addGestureRecognizer(tapGesture)
        logoutTile.isUserInteractionEnabled = true
    }

    @objc private func logoutTapped() {
        showAlert()
    }
    
    private func showAlert() {
        let alert = UIAlertController(title: "Logout", message: "Are you sure you want to logout?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Logout", style: .destructive, handler: { [weak self]_ in
            // Handle the actual logout logic here
            self?.navigateToLoginScreen()
        }))
        present(alert, animated: true, completion: nil)
    }
    
    // Navigation logic to return to the login screen
    private func navigateToLoginScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewControllerDefault") as? ViewController {
            loginVC.modalTransitionStyle = .crossDissolve
            loginVC.modalPresentationStyle = .fullScreen
            
            // Todo: Clear session data, user defaults, or any cached data here
            
            // Navigate to the Login screen
            present(loginVC, animated: true, completion: nil)
        }
    }

}
