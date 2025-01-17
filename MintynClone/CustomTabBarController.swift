//
//  TabbarController.swift
//  MintynClone
//
//  Created by user on 1/17/25.
//

import Foundation
import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Change the selected item title color
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.brown], for: .selected)

        // Change the unselected item title color
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
    }
}
