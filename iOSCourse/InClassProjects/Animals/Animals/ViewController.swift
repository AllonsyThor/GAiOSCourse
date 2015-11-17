//
//  ViewController.swift
//  Animals
//
//  Created by Catherine Kelleher on 11/16/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UITextFieldName: UITextField!
   
    var animalName = Animal()

    @IBAction func ActionChooseDog(sender: AnyObject) {
        animalName.species = "Canine"
        animalName.name = (UITextFieldName.text)!
        UILabelOutput.text = String(animalName.whichAnimal())
    }
    

    @IBAction func ActionChooseCat(sender: AnyObject) {
        animalName.species = "Feline"
        animalName.name = (UITextFieldName.text)!
        UILabelOutput.text = String(animalName.whichAnimal())
    }

    @IBOutlet weak var UILabelOutput: UILabel!
    
    
//Below is something done for class notes
    @IBAction func showModalButtonDidPressed(sender: AnyObject) {
        if UILabelOutput.text == "Katie"{
        performSegueWithIdentifier("ModalSegue", sender: nil)
        }
    }
}

