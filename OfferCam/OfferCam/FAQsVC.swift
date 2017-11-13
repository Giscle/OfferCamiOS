//
//  FAQsVC.swift
//  OfferCam
//
//  Created by Aqeel on 11/12/17.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit

class FAQsVC: UIViewController {

    @IBOutlet var FAQsTV:UITableView!
    
    fileprivate var indices:[Int] = []
    let textLabel:[String] = ["What is OfferCam?","How do I redeem the points?","Where should I mount the phone?","How much data does the app use?","Does the app record sound?","Why We record video?"]
    let textDetail:[String] = ["OfferCam is a Dashcam with reward app. Your uploaded video data will help us in making roadmap up to date.","The OfferCam shop is located under My Profile tab.","The phone should be mounted in such a way that the camera can see the road and you should be comfortable in driving the car just seeing the video in phone.","The app is configured default to upload only on WiFi. However, if you want to upload video, you can choose the upload tab from profile.","No, OfferCam don’t record sound.","You help city roads up to date by tracking hazards, potholes etc."
]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func menuAction(_ sender: Any) {
        let mainController = sideMenuController!
        mainController.showLeftView(animated: true, completionHandler: nil)
    }
    
    deinit {
        print("FAQs VC deinit")
    }
}

extension FAQsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textDetail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = textLabel[indexPath.row]
        let detailedText = textDetail[indexPath.row]
        cell.detailTextLabel?.text = (indices.contains(indexPath.row)) ? detailedText : ""
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indices.contains(indexPath.row) {
            indices.remove(at: indices.index(of: indexPath.row)!)
        } else {
            indices.append(indexPath.row)
        }
        self.FAQsTV.reloadData()
    }
}
