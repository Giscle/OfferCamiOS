//
//  AboutUsVC.swift
//  OfferCam
//
//  Created by Mac on 11/11/2017.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit

class AboutUsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func menuAction(_ sender: Any) {
        let mainController = sideMenuController!
        mainController.showLeftView(animated: true, completionHandler: nil)
    }
    
    deinit {
        print("about us vc deinit")
    }

}
