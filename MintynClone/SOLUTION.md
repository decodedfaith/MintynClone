### Completed Features
- Implemented Login screen and Homepage.

- Working on Mocking login functionality to transition from Login to Home.
- Working on Settings tab includes functional Legal, System, and Logout options.

### Potential Refactors and Enhancements
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


### UI/UX Enhancements
- Add animations for smoother transitions between screens.
- Improve visual hierarchy and spacing for better readability.
- Include loading indicators during login to enhance user feedback.


### Performance Optimizations
- Optimize image assets for faster loading.
- Use lazy loading for data-heavy screens like Home.


### Additional Features
- Implement a secure password reset flow.
- Add a dark mode toggle in Settings.
- Enable biometric login for enhanced security.
