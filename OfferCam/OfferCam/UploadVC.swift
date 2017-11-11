//
//  UploadVC.swift
//  OfferCam
//
//  Created by Aqeel on 11/11/17.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit

class UploadVC: UIViewController {
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
        print("UploadViewController deinit")
    }

}
