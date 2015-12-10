//
//  ViewController.swift
//  TableViewFun
//
//  Created by Catherine Kelleher on 11/18/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var companies: [String] = ["Apple", "Dell", "Ben & Jerry's", "General Assembly", "dog bakery", "chipotle"]
    
    
    @IBOutlet weak var companyTextField: UITextField!
   
    @IBOutlet weak var tableView: UITableView!

    @IBAction func addButtonDidPressed(sender: AnyObject) {
        //Access value of companyTextField
        let newCompany = companyTextField.text!
        
        //Adding a new element to companies array
        companies.append(newCompany)
        
        //Telling the tableview to refresh itself
        tableView.reloadData()
    }
    
    
    @IBAction func deleteButtonDidPressed(sender: AnyObject) {
    
            companies.removeLast()
            tableView.reloadData()
    }
    
    
    @IBAction func sortButtonDidPressed(sender: AnyObject) {
    
        companies.sortInPlace({(value1: String, value2: String) -> Bool in
            return value2 > value1})
        tableView.reloadData()
    }
    
    @IBAction func filterButtonDidPressed(sender: AnyObject) {
        for company in companies {
            let str = String(company)
            if str.lowercaseString == str {
                let i = companies.indexOf(str)
                companies.removeAtIndex(i!)
                
            }
        }
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            companies.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    //Conforming to the UITableViewDataSource
    
    //How many sections should be in my tableview?
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // How many rows shoudl be in a particular section?
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }

    
    // What cell should I display for the tableview?
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        print("what's the cell for \(indexPath)")
        
//        let cell = UITableViewCell(style: .Default, reuseIdentifier: "")
//        cell.textLabel?.text = "Katie"
        
        
        //Create a cell object
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "")
        cell.textLabel?.text = companies[indexPath.row]
        
        

        //Cell with thumbnail
//        let cell = UITableViewCell(style: .Value1, reuseIdentifier: "")
//        cell.textLabel?.text = "Katie"
//        cell.detailTextLabel?.text = "Developer"
//        cell.imageView?.image = UIImage(named:"(put name of image here")
        
        
        return cell
    }
    
}

