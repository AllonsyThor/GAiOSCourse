//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var indexOfFibNumberField: UITextField!
    
    @IBOutlet weak var numberInFibSeqLabel: UILabel!
    
    @IBAction func fibonacciNumberAtIndex(sender: AnyObject) {
       
        
            var N: Int = Int(indexOfFibNumberField.text!)!
            var fib = 0
            var fib1 = 1
            
            for _ in 1...N {
                print(fib)
                var seq = fib + fib1
                fib = seq
            
            }
            numberInFibSeqLabel.text = String(" \(fib)")
       
    
    }
  
    
}
