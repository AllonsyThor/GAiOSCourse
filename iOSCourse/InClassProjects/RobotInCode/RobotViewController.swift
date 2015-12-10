//
//  RobotViewController.swift
//  RobotInCode
//
//  Created by Catherine Kelleher on 12/7/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit



class RobotViewController: UIViewController {

    var robotTogether = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let robotHead = UIView(frame: CGRect(x: 150, y: 90, width: 100, height: 100))
        robotHead.backgroundColor = UIColor.purpleColor()
        self.view.addSubview(robotHead)
        
        let robotBody = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        robotBody.backgroundColor = UIColor.blueColor()
        self.view.addSubview(robotBody)
        
        let robotLeftArm = UIView(frame: CGRect(x: 30, y: 200, width: 50, height: 200))
        robotLeftArm.backgroundColor = UIColor.redColor()
        self.view.addSubview(robotLeftArm)
        
        let robotRightArm = UIView(frame: CGRect(x: 320, y: 200, width: 50, height: 200))
        robotRightArm.backgroundColor = UIColor.redColor()
        self.view.addSubview(robotRightArm)
        
        let robotRightLeg = UIView(frame: CGRect(x: 250, y: 420, width: 50, height: 200))
        robotRightLeg.backgroundColor = UIColor.greenColor()
        self.view.addSubview(robotRightLeg)
        
        let robotLeftLeg = UIView(frame: CGRect(x: 100, y: 420, width: 50, height: 200))
        robotLeftLeg.backgroundColor = UIColor.greenColor()
        self.view.addSubview(robotLeftLeg)
        
        
       robotTogether = [robotHead, robotBody, robotLeftArm, robotRightArm, robotRightLeg, robotLeftLeg]
    }

}
