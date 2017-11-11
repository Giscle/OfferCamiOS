//
//  DrawerViewController.swift
//  OfferCam
//
//  Created by Aqeel on 11/9/17.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit
import KYDrawerController

var menuSelectionSegueID:String = ""

class DrawerViewController: UIViewController {
    
    @IBOutlet weak var profileLogo: UIImageView!
    @IBOutlet var HomeBtn: UIButton!
    @IBOutlet var AboutUsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileLogo.layer.cornerRadius = profileLogo.frame.size.width/2
    }
    
    
    @IBAction func menuSegueAction(_ sender: Any) {
        if let drawerController = self.parent as? KYDrawerController {
            menuSelectionSegueID = (sender as! UIButton).currentTitle!
            drawerController.setDrawerState(.closed, animated: true)
        }
    }
    

    deinit {
        print("DrawerViewController deinit")
    }
}
