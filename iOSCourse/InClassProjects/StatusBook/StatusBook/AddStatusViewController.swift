//
//  AddStatusViewController.swift
//  StatusBook
//
//  Created by Catherine Kelleher on 1/20/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit
import Parse

class AddStatusViewController: UIViewController {

    @IBOutlet weak var statusTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonDidPress(sender: AnyObject) {
        
        // Push a new status to parse
        let status = PFObject(className: "Status")
        
        //Set its properties
        status["title"] = statusTextField.text
        
        
        print("Status BEFORE \(status.objectId)")
        
        status.saveInBackgroundWithBlock { (success, error) -> Void in
            if (success){
                print("Status After \(status.objectId)")
            }
        }
    }
    
  



}
