//
//  ViewController.swift
//  fastOne
//
//  Created by Naruto on 6/1/18.
//  Copyright © 2018 Naruto. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate {
    @IBOutlet weak var fastAdBanner: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let request = GADRequest()
        request.testDevices = [kGADSimulatorID]
        
        fastAdBanner.adUnitID = "ca-app-pub-5153509728299597/1454483481"
        fastAdBanner.rootViewController = self
        fastAdBanner.delegate = self
        fastAdBanner.load(request)
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func youtube(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://youtube.com/ScarNaruto")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func twitter(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://twitter.com/scar_naruto")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func snapchat(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://snapchat.com/add/abdomuftah")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func instagram(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://instagram.com/scar_naruto")! as URL, options: [:], completionHandler: nil)
    }
    
    
    

}

