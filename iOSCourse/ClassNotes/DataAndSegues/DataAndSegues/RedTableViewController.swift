//
//  RedTableViewController.swift
//  DataAndSegues
//
//  Created by Catherine Kelleher on 11/23/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class RedTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "GreenViewControllerSegue"{
        let gvc = segue.destinationViewController as!
            GreenViewController
        
        gvc.mainString = "Whatever"
    }
    
   }
}
