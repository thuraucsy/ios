//
//  DetailViewController.swift
//  FoodPin
//
//  Created by ThuraAung on 1/3/16.
//  Copyright © 2016 ThuraAung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var restaurantNameView:UILabel!
    @IBOutlet var tableView:UITableView!
    
    var restaurant:Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.restaurantImageView.image = UIImage(named: restaurant.image)
        
        self.tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        // remove extra separator
        self.tableView.tableFooterView = UIView(frame:CGRectZero)
        // set the color of it
        self.tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        
        title = self.restaurant.name
        
        // iOS 8 most exciting feature self sizing
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    @IBAction func close(segue:UIStoryboardSegue) {
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // make can't do swipe hide
        self.navigationController?.hidesBarsOnSwipe = false
        // and when it get hidden, set back to false 
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DetailTableViewCell
        
        // Configure the cell
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
        case 3:
            cell.fieldLabel.text = "Been here"
            cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here before" : "No"
        case 4:
            cell.fieldLabel.text = "Phone"
            cell.valueLabel.text = restaurant.phone
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        //so that we can get the color set in viewDidLoad()
        cell.backgroundColor = UIColor.clearColor()
        return cell
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
