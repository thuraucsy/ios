//
//  WebViewController.swift
//  FoodPin
//
//  Created by ThuraAung on 1/10/16.
//  Copyright © 2016 ThuraAung. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView:UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        if let url = NSURL(string: "https://www.google.com") {
//            let request = NSURLRequest(URL: url)
//                webView.loadRequest(request)
//        }
        
//        let url = NSURL(fileURLWithPath: "thura.html")
        
        let localfilePath = NSBundle.mainBundle().URLForResource("home", withExtension: "html");
        let myRequest = NSURLRequest(URL: localfilePath!);
        webView.loadRequest(myRequest);
        
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
