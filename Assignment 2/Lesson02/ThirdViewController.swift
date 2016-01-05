//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var numberInputTextField: UITextField!
    
    @IBOutlet weak var evenOrNotLabel: UILabel!
    
    @IBAction func calculateEvenOnClick(sender: AnyObject) {
        let numberInput: Int = Int(numberInputTextField.text!)!
        
        if numberInput % 2 == 0 {
            evenOrNotLabel.text = "\(numberInput) is even!"
        } else {
            evenOrNotLabel.text = "\(numberInput) is not even!"
        }
    
    }
}
