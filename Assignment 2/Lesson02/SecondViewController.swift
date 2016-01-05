//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var sum: Int = 0
    
    @IBOutlet weak var numberGroupTextField: UITextField!
    
    @IBOutlet weak var sumOutputAreaLabel: UILabel!
    
    @IBAction func createSumOfNumbers(sender: AnyObject) {
       sum += Int(numberGroupTextField.text!)!
       sumOutputAreaLabel.text = "\(sum)"
        
    }
}
