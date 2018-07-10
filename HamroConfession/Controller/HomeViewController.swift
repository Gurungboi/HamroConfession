//
//  HomeViewController.swift
//  HamroConfession
//
//  Created by Sunil Gurung on 4/7/18.
//  Copyright © 2018 Sunil Gurung. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /************************* METHODS *************************/
    @IBAction func settingBtn(_ sender: UIBarButtonItem) {
        let settingVC = self.storyboard?.instantiateViewController(withIdentifier: "settingVC")
        self.navigationController?.pushViewController(settingVC!, animated: true)
        
    }

}
