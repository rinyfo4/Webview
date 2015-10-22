//
//  ViewController.swift
//  Webview
//
//  Created by Luka Ivicevic on 10/4/15.
//  Copyright © 2015 jaysl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    
    var url: NSURL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        print(url)
        
        let URLRequest = NSURLRequest(URL:(self.url)!)
        
        
        self.webView.loadRequest(URLRequest)
    
           
       }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



