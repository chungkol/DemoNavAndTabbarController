//
//  YourBookController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class YourBookController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cameraButtonItem = UIBarButtonItem(barButtonSystemItem: .Camera, target: self, action: #selector(takeAPicture(_:)))
        
         let emailButtonItem = UIBarButtonItem(image: UIImage(named: "EMAIL"), style: .Plain, target: self, action: #selector(sendEmail(_:)))
        
        navigationItem.rightBarButtonItems = [cameraButtonItem,emailButtonItem]
       
        navigationItem.leftBarButtonItems = [cameraButtonItem,emailButtonItem]

    }
    func takeAPicture(sender: AnyObject){
        print("take a picture")
    }
    func sendEmail(sender: AnyObject){
        print("send a mail")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
