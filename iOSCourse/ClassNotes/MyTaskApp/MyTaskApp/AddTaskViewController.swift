//
//  AddTaskViewController.swift
//  MyTaskApp
//
//  Created by Catherine Kelleher on 11/30/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

//Specifying methods that a class should implement
protocol AddTaskViewDelegate{
    
    //Will be called when a task is added
    func taskWasAdded(task: Task)
}

class AddTaskViewController: UIViewController, UITextFieldDelegate {

    var initialTask: Task?
    
    //Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var completedSwitch: UISwitch!
    
    //Delegate will be notified of important events
    //Delegate is optional, it can or can't be there
    var delegate: AddTaskViewDelegate?
    
    func textFieldDidBeginEditing(textField: UITextField) {
        nameTextField.becomeFirstResponder() //focus on element
        //nameTextField.resignFirstResponder() blur on element
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("textFieldDidBeginEditing")
        dueDateTextField.becomeFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if initialTask != nil {
            nameTextField.text = initialTask!.name
            name
        }
        
       //Subscribing to appEnterForeground notification. Will call method "appForegroundNotificationReceived" when we received notification "appEnterForeground"
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "appForegroundNotificationReceived", name: "appEnterForeground", object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "appBackgroundNotificationReceived", name: "appEnterBackground", object: nil)
    }
    
    func appForegroundNotificationReceived(){
        print("appForegroundNotificationReceived in AddTaskViewController")
    }

    func appBackgroundNotificationReceived(){
        
    }
   
    //When submit button is pressed, create a newtask object from the information given
    @IBAction func submitButtonDidPressed(sender: UIButton) {
        let task = Task(name: nameTextField.text!, date: dueDateTextField.text!, completed: completedSwitch.on)
        
        //Let the delegate know that a task was added, pass it the task object
        //'?'-> optional chaining, line of code is ignored (Rather than crash) when a delegate is nil
        delegate?.taskWasAdded(task)
    }
   
    

}
