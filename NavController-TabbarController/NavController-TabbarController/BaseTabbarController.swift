//
//  BaseTabbarController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/17/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let bookVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("YourBookVC") as! YourBookController
        
        let homeVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("HomeVC") as! HomeViewController
        
        let profileVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ProfileVC") as! ProfileViewController
        
        let bookNav = BaseNavigationController(rootViewController: bookVC)
        
        let homeNav = BaseNavigationController(rootViewController: homeVC)

        let profileNav = BaseNavigationController(rootViewController: profileVC)
        
        viewControllers = [bookNav, homeNav, profileNav ]
        
        profileVC.title = "Profile"
        homeVC.title = "Home"
        bookVC.title = "Bool"

    }
    
    
    
}
