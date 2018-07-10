//
//  WebsiteViewController.swift
//  HamroConfession
//
//  Created by Sunil Gurung on 4/7/18.
//  Copyright © 2018 Sunil Gurung. All rights reserved.
//

import UIKit

class WebsiteViewController: UIViewController {
    
    /************************* FUNCTION *************************/
    var titleName: String = ""
    var aboutUrl: String = ""
    var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = titleName
        
        webView = UIWebView(frame: CGRect.zero)
        webView.sizeToFit()
        webView.dataDetectorTypes = .all
        view = webView
        
        loadWebView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /************************* FUNCTION *************************/
    
    func loadWebView(){
        
        if aboutUrl == "http://www.google.com.np" {
            let url = URL(string: aboutUrl)
            
            let request = NSURLRequest(url: url!)
            
            webView.loadRequest(request as URLRequest)
            
            
        }else{
            
            let url = Bundle.main.url(forResource: aboutUrl, withExtension:"html")
            let request = NSURLRequest(url: url!)
            webView.loadRequest(request as URLRequest)
            
        }
        
        
    }

}
