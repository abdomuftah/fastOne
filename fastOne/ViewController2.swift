//
//  ViewController2.swift
//  fastOne
//
//  Created by Naruto on 6/1/18.
//  Copyright © 2018 Naruto. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var website: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        website.delegate = self
        let url = URL(string: "https://scar-naruto.com")
        website.loadRequest(URLRequest(url: url!))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reload(_ sender: Any)
    {
        website.reload()
    }
    
    @IBAction func back(_ sender: Any)
    {
        website.goBack()
    }
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    func webViewDidStartLoad(_ webView: UIWebView){
        activityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView){
        activityIndicator.stopAnimating()
    }
    
    
    
    
}
