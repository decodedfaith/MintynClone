//
//  SettingsSceneController.swift
//  MintynClone
//
//  Created by user on 1/23/25.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var logoutTile: UIView!
    //    @IBOutlet weak var logoutTile: UIView! // IBOutlet connected to the Storyboard tile view

    override func viewDidLoad() {
        super.viewDidLoad()

        // Step 2: Add Tap Gesture Recognizer to the tile
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(logoutTapped))
        logoutTile.addGestureRecognizer(tapGesture)
        logoutTile.isUserInteractionEnabled = true
    }

    // Step 3: Define the logout action
    @objc private func logoutTapped() {
        print("Logout tapped!") // Replace this with your logout logic
        showAlert()
    }
    
    private func showAlert() {
        let alert = UIAlertController(title: "Logout", message: "Are you sure you want to logout?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Logout", style: .destructive, handler: { [weak self]_ in
            // Handle the actual logout logic here
            self?.navigateToLoginScreen()
            print("User logged out")
        }))
        present(alert, animated: true, completion: nil)
    }
    
    // Navigation logic to return to the login screen
    private func navigateToLoginScreen() {
        // Assuming a storyboard ID for the Login screen's ViewController is "LoginViewController"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        print("Ullllll....")
        if let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewControllerDefault") as? ViewController {
            loginVC.modalTransitionStyle = .crossDissolve
            loginVC.modalPresentationStyle = .fullScreen
            
            // Todo: Clear session data, user defaults, or any cached data here
            
            // Navigate to the Login screen
            present(loginVC, animated: true, completion: nil)
            print("done........")
        }
    }

}
