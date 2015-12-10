//
//  ViewController.swift
//  AnimationExercise
//
//  Created by Catherine Kelleher on 12/9/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueBox: UIView!
    
    @IBAction func boxDidTap(sender: AnyObject) {
        
        UIView.animateWithDuration(2.0, animations: {
            self.blueBox.backgroundColor = UIColor.purpleColor()
            self.blueBox.frame = CGRect(x: 25, y: 25, width: 100, height: 100)
            
            }, completion: {completed in
        
                UIView.animateWithDuration(2.0, animations: {
                    self.blueBox.backgroundColor = UIColor.blueColor()
                    self.blueBox.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
                
                })
        
        })

}

}