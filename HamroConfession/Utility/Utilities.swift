//
//  Utilities.swift
//  HamroConfession
//
//  Created by Sunil Gurung on 4/7/18.
//  Copyright © 2018 Sunil Gurung. All rights reserved.
//

import Foundation
import UIKit
//import GoogleMobileAds

class Utilities{
    
    
    //Screen Size
    
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    var collectionViewHeightEmergency: CGFloat!
    var NavigationBackButtonIcon: String = "backIcon"
    var viewWidth: CGFloat!
    var viewHeight: CGFloat!
    
    func addShadowToView(contentView: UIView ,backgroundCardView: UIView)  {
        contentView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        
        backgroundCardView.layer.cornerRadius = 3.0
        backgroundCardView.layer.masksToBounds = false
        
        contentView.layer.cornerRadius = 3.0
        contentView.layer.masksToBounds = false
        
        backgroundCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
        backgroundCardView.layer.shadowOffset = CGSize(width: 4, height: 4)
        backgroundCardView.layer.shadowOpacity = 0.5
    }
    
    func addBorderToView(view: UIView){
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).cgColor
        
    }
    
    func layerToImage(image: UIImageView){
        image.layer.borderWidth = 2.0
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = image.frame.size.height / 2
        image.clipsToBounds = true
    }
    
    func layerTobutton(button: UIButton){
        button.layer.borderWidth = 2.0
        button.layer.masksToBounds = false
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = button.frame.size.height / 2
        button.clipsToBounds = true
    }
    /*
    func initializeAd(view: GADBannerView, adView: UIViewController) {
        view.adUnitID = Ad //Ad_unit_ID
        view.rootViewController = adView
        let request = GADRequest()
        //request.testDevices = ["03a7a46df385b9b9ed3517c6d48e6cd8"]
        view.load(request)
        
    }
 */
    
}
