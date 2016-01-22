//
//  LoginViewController.swift
//  StatusBook
//
//  Created by Catherine Kelleher on 1/20/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {



    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testObject = PFObject(className: "TestObject")
        testObject["color"] = "blue"
        testObject.saveInBackgroundWithBlock { (success, error) -> Void in
            print("We did it!")
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonDidPress(sender: AnyObject) {
        
        PFUser.logInWithUsernameInBackground(emailTextField.text!, password: passwordTextField.text!){(user, error) -> Void in
        
            if user != nil{
                self.performSegueWithIdentifier("StatusSegue", sender: nil)
            }
        
        }
    }
    
    @IBAction func signUpButtonDidPress(sender: AnyObject) {
        
        let newUser = PFUser()
        newUser.username = emailTextField.text
        newUser.email = emailTextField.text
        newUser.password = passwordTextField.text
        
        newUser.signUpInBackgroundWithBlock { (success, error) in
           
            //push user to statuses screen
            if success {
              self.performSegueWithIdentifier("StatusSegue", sender: nil)
                
            //Else, display error message: UIAlertView / iOS 8.0 UIAlertController
            }
            
            
            print("Success \(success) error \(error)")
        }
        
    }

}
