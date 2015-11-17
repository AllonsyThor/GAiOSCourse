//
//  SumViewController.swift
//  Class5Project
//
//  Created by Catherine Kelleher on 11/9/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class SumViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
  
    
    @IBAction func sumButton(sender: UIButton) {
     
        let numberOne = Int(firstNumber.text!)!
        let numberTwo = Int(secondNumber.text!)!
        let sum = numberOne + numberTwo
        
        answerLabel.text = "\(sum)"
    
    }
    

    }
