//
//  PrivacyPolicyVC.swift
//  OfferCam
//
//  Created by Aqeel on 11/11/17.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit

class PrivacyPolicyVC: UIViewController , UIWebViewDelegate {
    
    @IBOutlet weak var WebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let path = Bundle.main.path(forResource: "PrivacyPolicy", ofType: "html") else{
            return
        }
        let filePath = URL(fileURLWithPath: path)
        WebView.loadRequest(URLRequest(url: filePath))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction func menuAction(_ sender: Any) {
        let mainController = sideMenuController!
        mainController.showLeftView(animated: true, completionHandler: nil)
    }
    
    deinit {
        print("PrivacyViewController deinit")
    }
}
