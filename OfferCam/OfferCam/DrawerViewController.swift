//
//  DrawerViewController.swift
//  OfferCam
//
//  Created by Aqeel on 11/9/17.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit



class DrawerViewController: UIViewController {
    
    @IBOutlet weak var profileLogo: UIImageView!
    @IBOutlet var HomeBtn: UIButton!
    @IBOutlet var AboutUsBtn: UIButton!
    
    fileprivate var controllerIds = ["HomeNavVC","AboutUsNavVC","TripLogNavVC","UploadNavVC","PrivacyPolicyNavVC","SupportNavVC"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileLogo.layer.cornerRadius = profileLogo.frame.size.width/2
    }
    
    func getViewController(index: Int) -> UIViewController {
        return storyboard?.instantiateViewController(withIdentifier: controllerIds[index]) as! UINavigationController
    }
    
    @IBAction func menuSegueAction(_ sender: Any) {
        let mainViewController = sideMenuController!
        mainViewController.hideLeftView(animated: true, completionHandler: nil)
        mainViewController.rootViewController =  getViewController(index: (sender as! UIButton).tag)
    }
    
    @IBAction func LogoutButton(_ sender: Any) {
    }
    
    
    
    deinit {
        print("DrawerViewController deinit")
    }
}
