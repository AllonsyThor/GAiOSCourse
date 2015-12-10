//
//  ViewController.swift
//  CustomTableViewProject
//
//  Created by Catherine Kelleher on 11/23/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.dataSource = self
        tableView.delegate = self
    }

    //1. How many sections should the table view have?
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //2. How many rows should the table view have at a given section?
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //3. What's the cell for a given index path (row, section)?
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //Finds cell in reuse pool to reuse. If cell doesn't exist, it creates the cell object for you
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell")!
            as! TableViewCell
        
        cell.awesomeLabel.text = "Cool \(indexPath.row)"
        cell.awesomeButton.setTitle("Cool Button \(indexPath.row)", forState: .Normal)
        
        return cell
    }


}

