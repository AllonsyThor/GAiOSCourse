//
//  StatusesViewController.swift
//  StatusBook
//
//  Created by Catherine Kelleher on 1/20/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit
import Parse

class StatusesViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusQuery = PFQuery(className: "Status")
        statusQuery.getObjectInBackgroundWithId("") {()}

        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Created the cell
        let cell = tableView.dequeueReusableCellWithIdentifier("StatusCell")!
        
        //We modify cell properties
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }


}
