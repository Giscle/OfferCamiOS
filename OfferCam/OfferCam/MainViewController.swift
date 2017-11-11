//
//  MainViewController.swift
//  OfferCam
//
//  Created by Aqeel on 11/9/17.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit
import KYDrawerController

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if menuSelectionSegueID != "" {
            //perform segue from here.
            self.performSegue(withIdentifier: menuSelectionSegueID, sender: nil)
            // reset menuSelectionSegueID after performing segue
            menuSelectionSegueID = ""
        }
    }
    
    @IBAction func menuAction(_ sender: Any) {
        if let drawerController = navigationController?.parent as? KYDrawerController {
            drawerController.setDrawerState(.opened, animated: true)
        }
    }
    
    deinit {
        print("MainViewController deinit")
    }

}
