//
//  ButtonViewController.swift
//  Webview
//
//  Created by Luka Ivicevic on 10/22/15.
//  Copyright © 2015 jaysl. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    let urlOne = "https://www.google.com" //This is a string, keep it like that. You're converting into a NSURL below in buttonOne.
    
    let urlTwo =  "https://www.apple.com" //update your info.Plist so that you can access whichever website. If a link doesnt work you'll get an error below that says you have to update your info.Plist with NSTransportSecurity. Rob does it in the webView video. 

    
    @IBAction func buttonOne(sender: AnyObject) {
    
       let myWebView = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! ViewController //I made the webView controller have the identifier specified here. 
        
        
        //Here, you're referencing the ViewController class. By doing this, it's pretty much like you can access everything in that ViewController class.
        
        
        myWebView.url = NSURL(string:"\(urlOne)") //the url variable in the ViewController class is being accessed here. when you use a "." you're accessing something and then adding something to it. Look up "dot notation" for a better explanation. That's what we're doing here, and then we're converting urlOne into a NSURL.
        
      //  myWebView.url = NSURL(string:"\(urlTwo)") //here is your URL

        
        self.presentViewController(myWebView, animated: true, completion: nil) //This presents the webView controller through the instantiateViewControllerWithIdentifier.
    
    }
    
    @IBAction func buttonTwo(sender: AnyObject) {
        let myWebView = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! ViewController

        myWebView.url = NSURL(string:"\(urlTwo)") //here is your URL for url2.
        
        self.presentViewController(myWebView, animated: true, completion: nil) //This presents the webView controller through the instantiateViewControllerWithIdentifier.

    
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
