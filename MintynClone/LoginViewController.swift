//
//  LoginViewController.swift
//  MintynClone
//
//  Created by user on 1/14/25.
//
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //Mock Credentials
    let validPhoneNumber = "9034256272"
    let validPassword = "securePassword123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberTextField.becomeFirstResponder() // To test if it works

        errorLabel.isHidden = true // Initislly hides error label
        activityIndicator.isHidden = true // Initially Hides the activity indicator
//        configureUI()
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        view.endEditing(true)  //dismiss the keyboard
        
        // Retrieve user inputs
        guard let phone = phoneNumberTextField.text, !phone.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            displayError(message: "Please fill in all fields.")
            return
        }
        
        print("User Input Phone: \(phone)")
        print("Mock Phone: \(validPhoneNumber)")


        
        // Validate phone number format
        if !isValidPhoneNumber(phone) {
            displayError(message: "Invalid phone number format. Please enter a 10-digit number.")
            return
        }
        
        // Start activity indicator
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        loginButton.isEnabled = false
        
        // simulating an actual API Call
        mockAPILogin(phone: phone, password: password) { [weak self] success, errorMessage in
            DispatchQueue.main.async {
                // halts activity indicator
                self?.activityIndicator.stopAnimating()
                self?.activityIndicator.isHidden = true
                self?.loginButton.isEnabled = true
                
                if success {
                    self?.navigateToHomeScreen()
                } else if let errorMessage = errorMessage {
                    self?.displayError(message: errorMessage)
                }
            }
        }
    }
    
    //method to Validate Phone Number
    func isValidPhoneNumber(_ phone: String) -> Bool {
        // Step 1: Trim any whitespace or newlines from the phone number
        let trimmedPhone = phone.trimmingCharacters(in: .whitespacesAndNewlines)
        print("User Input Phone: \(phone)") // Check original input
        print("Trimmed Phone: \(trimmedPhone)") // Check trimmed phone number
        
        // Step 2: Print full string length and check for any trailing characters
        print("Trimmed Phone Length: \(trimmedPhone.count)") // Debugging output
        
        // Step 3: Print each character's ASCII value to check for hidden characters
        for (index, character) in trimmedPhone.enumerated() {
            let asciiValue = character.asciiValue ?? 0
            print("Character \(index): \(character) ASCII: \(asciiValue)")
        }

        // Step 4: Check if the trimmed phone number has exactly 10 digits
        if trimmedPhone.count == 10 {
            print("Phone number has exactly 10 digits.") // Confirm number of digits
            let phoneRegex = "^[0-9]{10}$" // Regex pattern
            
            // Step 5: Use NSRegularExpression for matching
            do {
                let regex = try NSRegularExpression(pattern: phoneRegex)
                let range = NSRange(location: 0, length: trimmedPhone.utf16.count)
                let matches = regex.matches(in: trimmedPhone, range: range)
                print("Matches: \(matches.count)") // Debugging output to see the number of matches
                
                return matches.count > 0
            } catch {
                print("Regex Error: \(error)")
                return false
            }
        } else {
            print("Phone number does not have exactly 10 digits.")
            return false
        }
    }



        
        //Mocks an API Call
        func mockAPILogin(phone: String, password: String, completion: @escaping (Bool, String?) -> Void) {
            // Simulate network delay
            DispatchQueue.global().asyncAfter(deadline: .now() + 2.0) {
                if phone == self.validPhoneNumber && password == self.validPassword {
                    completion(true, nil) // Success
                } else {
                    completion(false, "Invalid phone number or password.") // Failure
                }
            }
        }
        
        // method to display Error
        func displayError(message: String) {
            errorLabel.text = message
            errorLabel.textColor = .red
            errorLabel.isHidden = false
        }
        
        // Navigation logic
        func navigateToHomeScreen() {
            // Assuming a storyboard ID for the Home screen's ViewController is "HomeViewController"
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let homeVC = storyboard.instantiateViewController(withIdentifier: "HomepageViewController") as? HomepageViewController {
                homeVC.modalTransitionStyle = .crossDissolve
                homeVC.modalPresentationStyle = .fullScreen
                present(homeVC, animated: true, completion: nil)
            }
        }
}


