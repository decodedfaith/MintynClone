//
//  LoginViewModelTests.swift
//  MintynClone
//
//  Created by user on 1/29/25.
//
//
//import XCTest
//import Combine
//@testable import MintynClone
//
//class LoginViewModelTests: XCTestCase {
//    var viewModel: LoginViewModel!
//    var cancellables: Set<AnyCancellable> = []
//
//    override func setUp() {
//        super.setUp()
//        viewModel = LoginViewModel()
//    }
//
//    override func tearDown() {
//        viewModel = nil
//        cancellables.removeAll()
//        super.tearDown()
//    }
//
//    func testSuccessfulLogin() {
//        let expectation = self.expectation(description: "Successful login")
//        viewModel.phoneNumber = "9034526272"
//        viewModel.password = "securePassword123"
//        
//        viewModel.login()
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
//            XCTAssertTrue(self.viewModel.isAuthenticated, "User should be authenticated on correct credentials")
//            XCTAssertNil(self.viewModel.errorMessage, "Error message should be nil for successful login")
//            expectation.fulfill()
//        }
//        
//        waitForExpectations(timeout: 2, handler: nil)
//    }
//
//    func testFailedLogin() {
//        let expectation = self.expectation(description: "Failed login")
//        viewModel.phoneNumber = "wrong"
//        viewModel.password = "wrong"
//
//        viewModel.login()
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
//            XCTAssertFalse(self.viewModel.isAuthenticated, "User should not be authenticated with wrong credentials")
//            XCTAssertNotNil(self.viewModel.errorMessage, "Error message should be set on failed login")
//            expectation.fulfill()
//        }
//        
//        waitForExpectations(timeout: 2, handler: nil)
//    }
//}
