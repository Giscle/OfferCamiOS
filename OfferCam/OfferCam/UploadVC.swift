//
//  UploadVC.swift
//  OfferCam
//
//  Created by Aqeel on 11/11/17.
//  Copyright © 2017 Aqeel. All rights reserved.
//

import UIKit

class UploadVC: UIViewController {
    var titleLog : [String] = ["Trip Log 1","Trip Log2"]
    var duration : [String] = ["16:49:48 - 16:56:13","16:57:07 - 17:02:16"]
    var earnedPoing : [String] = ["0","0"]
    @IBOutlet weak var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.register(UINib(nibName: "CollectionVCell", bundle: nil), forCellWithReuseIdentifier: "logTripCell")
        CollectionView.delegate = self
        CollectionView.dataSource = self
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
extension UploadVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titleLog.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "logTripCell", for: indexPath) as! CollectionVCell
        cell.label1.text = "  "+titleLog[indexPath.row]
        cell.label2.text = "  "+duration[indexPath.row]
        cell.label3.text = "  Earned Point: "+earnedPoing[indexPath.row]
        return cell
    }
    //return size of cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize: CGRect = UIScreen.main.bounds
        return CGSize(width: screenSize.width-50 , height: 120)
    }
}
