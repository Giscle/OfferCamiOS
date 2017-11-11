//
//  FAQsVC.swift
//  OfferCam
//
//  Created by Aqeel on 11/12/17.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit

class FAQsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func menuAction(_ sender: Any) {
        let mainController = sideMenuController!
        mainController.showLeftView(animated: true, completionHandler: nil)
    }
}
