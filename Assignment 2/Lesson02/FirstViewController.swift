//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var replaceMeUILabel: UILabel!
    
  
    
    @IBAction func generateTextButton(sender: AnyObject) {
        replaceMeUILabel.text = String("Hello world!")
        
        let name = nameTextField.text!
        let age = Int(ageTextField.text!)!
        
        
        switch age {
        case 16...18 :
            print(String("You can drive!"))
        case 18...21 :
            print(String("You can drive and vote!"))
        case 21...100 :
            print(String("You can drive, vote & drink (but not at the same time)!!"))
        default :
            print( String("Hello \(name), you are \(age) years old!"))
        }
        
        
    }
    

}
