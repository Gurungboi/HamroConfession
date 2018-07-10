//
//  SettingViewController.swift
//  HamroConfession
//
//  Created by Sunil Gurung on 4/7/18.
//  Copyright © 2018 Sunil Gurung. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    /************************* OUTLET *************************/
    var name = [String]()
    var imgicon = [String]()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var fbProfile: UIImageView!
    @IBOutlet weak var lblfullname: UILabel!
    @IBOutlet weak var lblemail: UILabel!
    //@IBOutlet weak var bannerView: GADBannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        name = ["Notification","About Us","Terms & Conditions","Privacy Policy","Sign Out"]
        imgicon = ["notification","about","terms","privacy","signout"]
        
        
        //Utilities().initializeAd(view: bannerView, adView: self)
        //Utilities().layerToImage(image: fbProfile)
        self.tableView.tableFooterView = UIView()
        self.tableView.backgroundColor = blue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /************************* METHODS *************************/
    
    func infodetail(){
        let name = UserDefaults.standard.string(forKey: "name")
        let email = UserDefaults.standard.string(forKey: "email")
        let fbimage = UserDefaults.standard.string(forKey: "fbimage")
        lblfullname.text = name
        lblemail.text = email
        let imgURL = URL(string: fbimage!)
        if imgURL != nil {
            // let data = try? Data(contentsOf: imgURL!)
            //fbProfile.image = UIImage(data:data!)
            //fbProfile.sd_setImage(with: imgURL)
        }else{return}
    }
    
    func logout(){
        
        let alertVC = UIAlertController(
            title: "Are you sure you want to log out?",
            message: "Logging out will delete all the information from the AayoNepal.",
            preferredStyle: .actionSheet)
        alertVC.view.tintColor = alertColor
        
        let logoutAction = UIAlertAction(
            title: "Log Out",
            style:.default,
            handler:{ action in
                self.out()
        })
        
        alertVC.addAction(logoutAction)
        
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style:.cancel,
            handler: nil)
        alertVC.addAction(cancelAction)
        
        present(
            alertVC,
            animated: true,
            completion: nil)
    }
    
    
    func out(){
        
        //DatabaseHandler().deleteObject()
        
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationController:UINavigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        navigationController.viewControllers = [rootViewController]
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = navigationController
        
        //fbLoginManager.logOut()
    }
    
    
    
}

extension SettingViewController: UITableViewDelegate, UITableViewDataSource{
    
    /************************* TABLEVIEW *************************/
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SettingTableViewCell
        let indexpath = indexPath.row
        
        cell.lblname.text = name[indexpath]
        cell.imgIcon.image = UIImage(named:imgicon[indexpath])
        if indexpath == 0{
            cell.switchBtn.isHidden = false
        }
        else{
            cell.switchBtn.isHidden = true
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let index = indexPath.row
        
        
        if index == 1{
            self.title = ""
            let aboutUsVC = self.storyboard?.instantiateViewController(withIdentifier: "websiteVC") as! WebsiteViewController
            aboutUsVC.titleName = "About Us"
            aboutUsVC.aboutUrl = "about_us"
            self.navigationController?.pushViewController(aboutUsVC, animated: true)
            
        }
        else if index == 2{
            self.title = ""
            let aboutUsVC = self.storyboard?.instantiateViewController(withIdentifier: "websiteVC") as! WebsiteViewController
            aboutUsVC.titleName = "Terms and Conditions"
            aboutUsVC.aboutUrl = "tc"
            self.navigationController?.pushViewController(aboutUsVC, animated: true)
        }
        else if index == 3{
            self.title = ""
            let aboutUsVC = self.storyboard?.instantiateViewController(withIdentifier: "websiteVC") as! WebsiteViewController
            aboutUsVC.titleName = "Privacy Policy"
            aboutUsVC.aboutUrl = "pp"
            self.navigationController?.pushViewController(aboutUsVC, animated: true)
        }
            
        else if index == 4 {
            
            self.logout()
        }
        
        
        
        self.tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}
