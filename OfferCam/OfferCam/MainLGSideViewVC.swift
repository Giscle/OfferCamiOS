//
//  MainLGSideViewVC.swift
//  NoteFireiOS
//
//  Created by Mac on 07/11/2017.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit
import LGSideMenuController

class MainLGSideViewVC: LGSideMenuController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupControllers()
    }
    
    func setupControllers() {
        let rootNavController = storyboard?.instantiateViewController(withIdentifier: "HomeNavVC") as! UINavigationController
        
        let leftMenuViewController = storyboard?.instantiateViewController(withIdentifier: "DrawerViewController") as! DrawerViewController
        
        leftViewWidth = 300
        
        self.leftViewController = leftMenuViewController
        self.rootViewController = rootNavController
        
        leftViewCoverBlurEffect = UIBlurEffect(style: .regular)
        leftViewBackgroundBlurEffect = UIBlurEffect(style: .regular)
        leftViewPresentationStyle = .slideAbove
    }
    
    deinit {
        print("main lg view deinit")
    }
}
