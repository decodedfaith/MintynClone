# Mintyn Bank iOS Clone

The project includes a functional app with three core tabs: **Login**, **Home**, and **Settings**, developed using Swift and UIKit.

---

## Table of Contents
1. [Project Overview](#project-overview)
2. [Features](#features)
3. [Setup and Installation](#setup-and-installation)
4. [Usage Instructions](#usage-instructions)
5. [Code Structure](#code-structure)
6. [Refactors and Enhancements](#refactors-and-enhancements)
7. [Screenshots](#screenshots)
8. [Technologies Used](#technologies-used)
9. [Acknowledgments](#acknowledgments)

---

## Project Overview

This project demonstrates my ability to create a simple yet functional iOS application within a time-constrained environment. The goal was to build the following screens and implement their respective functionalities:

- **Login Screen**: Mock login functionality using phone number and password.
- **Home Tab**: Displays a placeholder for the main app content.
- **Settings Tab**: Includes options for System, Legal, and Logout functionalities.

Additionally, I documented potential refactors and enhancements in the `SOLUTION.md` file.

---

## Features

1. **Login Screen**
   - Validates user input for mock login using the following mock credentials:
     - **Phone Number**: `9034256272`
     - **Password**: `securePassword123`
   - Transitions to the Home tab upon successful login.

2. **Home Page**
   - Displays a placeholder message indicating the main content.

3. **Settings Tab**
   - Includes the following options:
     - **System**: Placeholder for system information.
     - **Legal**: Placeholder for legal information.
     - **Logout**: Logs the user out and navigates back to the Login screen.

4. **Navigation**
   - Tab bar navigation between Home and Settings.

---

## Setup and Installation

Follow these steps to set up and run the project locally:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/MintynBank-iOS-Test.git
   ```

2. Open the project in Xcode:
   ```bash
   cd MintynClone
   open MintynClone.xcodeproj
   ```

3. Run the project on a simulator or a connected device.

---

## Usage Instructions

Once the app is launched, users can:

- Enter the phone number and password to log in.
- Navigate to the Home tab after a successful login.
- Access the Settings tab to explore system information, legal details, and log out.

---

## Code Structure
- **viewController.swift**:  Landing page once the app loads up.
- **LoginViewController.swift**: Handles the login functionality and user validation.
- **HomepageViewController.swift**: Displays a placeholder for the main app content.
- **SettingsViewController.swift**: Manages the settings options, including legal, system, and logout actions.
- **AppDelegate.swift**: Manages the app lifecycle and initial view setup.

---

## Refactors and Enhancements

1. **Code Organization**:
   - Refactor view controllers to adhere to MVVM or VIPER architecture for better separation of concerns.
   - Extract reusable UI components to avoid duplication.
2. **Networking**:
   - Replace mock login with a real API call using URLSession or a third-party library like Alamofire.
3. **State Management**:
   - Use Combine or RxSwift for reactive state management, especially for login validation and user session handling.
4. **Error Handling**:
   - Implement robust error handling for failed API requests or invalid input.
5. **Testing**:
   - Add unit tests for core functionalities like login validation and user session management.

---

## Screenshots
<img width="411" alt="login:signuppage" src="https://github.com/user-attachments/assets/5e83f5fc-89b7-46c6-aa4e-89c66936e545" />
<img width="417" alt="loginpage" src="https://github.com/user-attachments/assets/28d3b5b3-9f23-4200-bd48-ff4e110ec75b" />
<img width="404" alt="homepage" src="https://github.com/user-attachments/assets/619ec8de-456b-408d-a9dd-9fdac505e888" />
<img width="418" alt="settingsPage" src="https://github.com/user-attachments/assets/c2b08c22-c30b-4026-8ed1-fbb98091d93d" />
<img width="415" alt="logoutView" src="https://github.com/user-attachments/assets/12ca4a08-af65-4a09-a559-e7731f7364ff" />




---

## Technologies Used

- **Swift**
- **UIKit**
- **Xcode**
- **AutoLayout**

---

## Acknowledgments

- Thanks to Mintyn Bank for the opportunity to participate in the iOS Developer coding test.
- Inspiration and guidance from various iOS development communities.

---

This version includes the mock credentials and removes unnecessary comments from the features and setup instructions. Let me know if you'd like any further changes!
