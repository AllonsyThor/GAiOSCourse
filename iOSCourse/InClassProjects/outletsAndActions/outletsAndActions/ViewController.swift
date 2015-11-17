//
//  ViewController.swift
//  outletsAndActions
//
//  Created by Catherine Kelleher on 11/9/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var postButton: UIButton!
    
    @IBOutlet weak var actionButton: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        postButton.setTitle("Whatever", forState: .Highlighted)
        postButton.layer.cornerRadius = 20
        
        
        
        
    }
    
   
    @IBAction func actionButtonClicked(sender: UIButton) {
        actionButton.backgroundColor = UIColor.purpleColor()
        print("I'm pressed")
        print("Your name is \(nameTextField.text!)")
    }


}

