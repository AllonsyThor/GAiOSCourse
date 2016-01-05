//
//  UserDefaultsViewController.swift
//  FilesandPersistence
//
//  Created by Catherine Kelleher on 1/4/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class UserDefaultsViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var `switch`: UISwitch!
    

    @IBAction func mainSwitch(sender: UISwitch) {
        if sender.on{
            view.backgroundColor = UIColor.whiteColor()
            mainLabel.textColor = UIColor.blackColor()
            print("Switch is on")
        } else {
            view.backgroundColor = UIColor.blackColor()
            mainLabel.textColor = UIColor.whiteColor()
            print("Switch is off")
        }
        
        NSUserDefaults.standardUserDefaults().setBool(sender.on, forKey: "lightModeEnable")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //When the view loads, read from user defaults
        // If light mode is enable, set background color to white, text to black
        if NSUserDefaults.standardUserDefaults().boolForKey("lightModeEnable"){
            view.backgroundColor = UIColor.whiteColor()
            mainLabel.textColor = UIColor.blackColor()
            
            
        //If light mode isn ot enabled, set background color to black, text to white
        } else {
            view.backgroundColor = UIColor.blackColor()
            mainLabel.textColor = UIColor.whiteColor()
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
        
        // Dispose of any resources that can be recreated.
    }
    

  

}
