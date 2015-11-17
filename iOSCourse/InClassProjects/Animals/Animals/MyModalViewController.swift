//
//  MyModalViewController.swift
//  Animals
//
//  Created by Catherine Kelleher on 11/16/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

//This along with the second view controller, close button, show modal button all part of notes, but built upon what I had done myself

import UIKit

class MyModalViewController: UIViewController {

  
    @IBAction func closeButtonDidPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
