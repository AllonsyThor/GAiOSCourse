//
//  ViewController.swift
//  Class5Project
//
//  Created by Catherine Kelleher on 11/9/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var labelField: UILabel!
    @IBAction func buttonSubmit(sender: AnyObject) {
        if nameTextField.text?.characters.count == 0{
            labelField.text = "You need to enter your name silly!"
        } else {
            labelField.text = "Hello \(nameTextField.text!)"
        }
        
    }


}

