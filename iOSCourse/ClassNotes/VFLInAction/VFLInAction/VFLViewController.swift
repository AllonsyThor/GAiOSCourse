//
//  VFLViewController.swift
//  VFLInAction
//
//  Created by Catherine Kelleher on 12/14/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class VFLViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //1. Create view + modify view properties
        let metrics = ["padding": 20.0, "size": 100.0]
        var boxes:[[String: AnyObject]] = []
        
        let leftBox = UIView()
        boxes.append(["view": leftBox, "color": UIColor.blueColor()])
        
        let rightBox = UIView()
        boxes.append(["view":rightBox, "color": UIColor(red: 1.0, green: 13.0/255.0, blue: 1.0, alpha: 1.0)])
        
        let bottomLeftBox = UIView()
        boxes.append(["view": bottomLeftBox, "color": UIColor(red: 232.0/255.0, green: 12.0/255.0, blue: 122.0/255.0, alpha: 1.0)])
        
        let bottomRightBox = UIView()
        boxes.append(["view":bottomRightBox, "color": UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)])
        
        
        //2. Add view to superview
        for boxDictionary in boxes {
            self.view.addSubview(boxDictionary["view"] as! UIView)
        }
        
        
        //3. Turn off translate auto resizing into constraint
        leftBox.translatesAutoresizingMaskIntoConstraints = false
        rightBox.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftBox.translatesAutoresizingMaskIntoConstraints = false
        bottomRightBox.translatesAutoresizingMaskIntoConstraints = false
        
        //4. Use VFL to create autolayout constraints
       
        
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H: |-padding-[lb(size)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V: |-padding-[lb(size)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H: [rb(size)]-padding-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V: |-padding-[rb(size)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H: |-padding-[blb(size)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V: |-padding-[blb(size)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H: [brb(size)]-padding-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V: [brb(size)]-padding-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: metrics, views: views))
        
        
    }

  
    

}
