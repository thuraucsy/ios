//
//  ShareViewController.swift
//  FoodPin
//
//  Created by ThuraAung on 1/3/16.
//  Copyright © 2016 ThuraAung. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
    @IBOutlet weak var backgroundImageView:UIImageView!
    
    override func viewDidLoad() {
        // bluring the background
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview((blurEffectView))

    }
}
