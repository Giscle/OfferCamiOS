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

    
    fileprivate var controllerIds = ["HomeNavVC","TripLogNavVC","UploadNavVC","PrivacyPolicyNavVC","FAQsNavVC","ProfileNavVC"]
    
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
        alertBox(msg: "Are you sure you want to Logout")
    }
    
    
    
    deinit {
        print("DrawerViewController deinit")
    }
    
    func alertBox(msg : String)  {
        let alert = UIAlertController(title: "Notice", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: { (myUIAction) in
            let mainViewController = self.sideMenuController!
            mainViewController.dismiss(animated: true, completion: nil)
            
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.destructive, handler: { (myUIAction) in
            let mainViewController = self.sideMenuController!
            mainViewController.hideLeftView(animated: true, completionHandler: nil)
        }))
        //        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        alert.view.layer.cornerRadius = 15
        self.present(alert, animated: true, completion: nil)
    }
}
