//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by ThuraAung on 1/3/16.
//  Copyright © 2016 ThuraAung. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    @IBOutlet weak var backgroundImageView:UIImageView!
    @IBOutlet weak var dialogView:UIView!
    
    override func viewDidLoad() {
        // bluring the background
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview((blurEffectView))
        
        // animation to View Object
        dialogView.transform = CGAffineTransformMakeTranslation(0, 500)
//        let scale = CGAffineTransformMakeScale(0.0, 0.0)
//        dialogView.transform = CGAffineTransformConcat(scale, transform)
    }
    
//    override func viewDidAppear(animated: Bool) {
//        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.AllowAnimatedContent, animations: {
//                self.dialogView.transform = CGAffineTransformMakeTranslation(0, 0)
//            }, completion: nil)
//    }
//
//    override func viewDidAppear(animated: Bool) {
//        UIView.animateWithDuration(0.7, animations: {
////            self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
//            self.dialogView.transform = CGAffineTransformMakeTranslation(0, 0)
//        })
//    }
}
