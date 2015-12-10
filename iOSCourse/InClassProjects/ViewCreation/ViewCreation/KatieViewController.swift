//
//  KatieViewController.swift
//  ViewCreation
//
//  Created by Catherine Kelleher on 12/7/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class KatieViewController: UIViewController {

    var originalY = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //1. Create a new view
        let blueBox = UIView(frame: CGRect(x: 30, y: 30, width: 50, height: 50))
        
        //2. Modify our view
        blueBox.backgroundColor = UIColor.blueColor()
        
        //3. Add view to view hierarchy
        self.view.addSubview(blueBox)
        
        //Add textfield in 5 seconds
        NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "addEmailTextField", userInfo: nil, repeats: false)
        
    }
    
    
    func addEmailTextField(){
        originalY += 100
        
        //1. Create an email field
        
        let emailTextField = UITextField(frame: CGRect(x: 100, y: originalY, width: 250, height: 50))
        
        //2. Modify our text field
        emailTextField.backgroundColor = UIColor.brownColor()
        emailTextField.placeholder = "Email"
        
        //3. Add to heirarchy
        
        self.view.addSubview(emailTextField)
        
        
        //Remove UIView from SuperView
//        emailTextField.removeFromSuperview()
    

    }

}
