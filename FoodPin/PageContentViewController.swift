//
//  PageContentViewController.swift
//  FoodPin
//
//  Created by ThuraAung on 1/9/16.
//  Copyright © 2016 ThuraAung. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
    
    @IBOutlet weak var headingLabel:UILabel!
    @IBOutlet weak var subHeadingLabel:UILabel!
    @IBOutlet weak var contentImageView:UIImageView!
    
    // page control
    @IBOutlet weak var pageControl:UIPageControl!
    
    @IBOutlet weak var getStartedButton:UIButton!
    @IBOutlet weak var forwardButton:UIButton!
    
    var index:Int = 0
    var heading:String = ""
    var imageFile:String = ""
    var subHeading:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        headingLabel.text = heading
        subHeadingLabel.text = subHeading
        contentImageView.image = UIImage(named: imageFile)
        pageControl.currentPage = index
        
        getStartedButton.hidden = (index == 3) ? false : true
        forwardButton.hidden = (index == 3) ? true : false
    }
    
    @IBAction func close(sender: AnyObject) {
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(true, forKey: "hasViewedWalkthrough")
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func nextScreen(sender: AnyObject) {
        let pageViewController = self.parentViewController as! PageViewController
        pageViewController.forward(index)
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
