//
//  ViewController.swift
//  Animations
//
//  Created by Catherine Kelleher on 12/9/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pinkBox: UIView!
    
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
 


    @IBAction func startAnimation(sender: AnyObject) {
        
        self.widthConstraint.constant = 50
        
        //Simple Animation
//        UIView.animateWithDuration(5.0, animations:{
//           
//            self.view.layoutIfNeeded()
//            //Ending State of pinkBox object
//            self.pinkBox.backgroundColor = UIColor.blackColor()
//            self.pinkBox.alpha = 0.5
//           self.pinkBox.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
//        })
//        
//        //Completion after
//        UIView.animateWithDuration(1.0, animations: {
//            self.pinkBox.backgroundColor = UIColor.blackColor()
//            }, completion: {completed in
//                
//                UIView.animateWithDuration(1.0, animations: {
//                self.pinkBox.backgroundColor = UIColor.blueColor()
//                })
//            
//        })
    
        
        //Transformations
        //Scaling Transformation modifies width + height
        UIView.animateWithDuration(1.0, animations: {
        //self.pinkBox.transform = CGAffineTransformMakeScale(1.2, 1.2)
        //})
        
        //Translation modifies x + y
        //self.pinkBox.transform = CGAffineTransformMakeTranslation(50, 50)
            
        //Rotation transformation changes the angle of the view
        self.pinkBox.transform = CGAffineTransformMakeRotation(45 * 0.0174533)
        
    })


  }

}