//
//  HomeVC.swift
//  OfferCam
//
//  Created by Mac on 11/11/2017.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
      
    }
    
    @IBAction func menuAction(_ sender: Any) {
        let mainController = sideMenuController!
        mainController.showLeftView(animated: true, completionHandler: nil)
    }
    
    deinit {
        print("MainViewController deinit")
    }
    
}

