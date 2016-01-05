//
//  PracticeUserDefaultViewController.swift
//  FilesandPersistence
//
//  Created by Catherine Kelleher on 1/4/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class PracticeUserDefaultViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
  
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submitButtonDidPress(sender: UIButton) {
        var userName = userNameTextField.text
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
