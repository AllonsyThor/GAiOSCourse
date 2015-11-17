//
//  ViewController.swift
//  Class6Classes
//
//  Created by Catherine Kelleher on 11/10/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var resultViewer: UILabel!
   
    var calc = Math()
    
    @IBAction func add(sender: UIButton) {
            calc.operator1 = Int(num1.text!)!
            calc.operator2 = Int(num2.text!)!
            resultViewer.text? = String(calc.add())
    }
    
    @IBAction func subtract(sender: UIButton) {
        calc.operator1 = Int(num1.text!)!
        calc.operator2 = Int(num2.text!)!
        resultViewer.text? = String(calc.subtract())
    }

    @IBAction func multiply(sender: UIButton) {
        calc.operator1 = Int(num1.text!)!
        calc.operator2 = Int(num2.text!)!
        resultViewer.text? = String(calc.times())
    }


    @IBAction func divide(sender: UIButton) {
        calc.operator1 = Int(num1.text!)!
        calc.operator2 = Int(num2.text!)!
        resultViewer.text? = String(calc.divide())
    }
    

}


