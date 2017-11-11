//
//  ViewController.swift
//  OfferCam
//
//  Created by Aqeel on 11/7/17.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LogInFB(_ sender: Any) {
        NextScreen()
    }
    
    @IBAction func LogInGoogle(_ sender: Any) {
        NextScreen()
    }
    func NextScreen()  {
        self.performSegue(withIdentifier: "segue", sender: nil)
    }
}

