//
//  ViewController.swift
//  pusApp
//
//  Created by Anantha Krishnan K G on 27/03/19.
//  Copyright © 2019 Ananth. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI
import BMSCore
import BMSPush


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpPush()
    }
    
    func setUpPush() {
        
        BMSClient.sharedInstance.initialize(bluemixRegion: BMSClient.Region.usSouth)
        
        BMSPushClient.sharedInstance.initializeWithAppGUID(appGUID: "AppGUID", clientSecret: "Client Secret")
        
    }


}

