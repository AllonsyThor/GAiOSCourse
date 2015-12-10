//
//  TasksViewController.swift
//  MyTaskApp
//
//  Created by Catherine Kelleher on 11/30/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource {

    var selectedTask: Task?
   
    var tasks = [
    
        Task(name: "Go to gym", date: "Tomorrow", completed: false),
        Task(name: "Go to work", date: "Never", completed: false),
        Task(name: "English homework", date: "Monday", completed: false),
        Task(name: "Walk the poof", date: "Wednesday", completed: false),
        Task(name: "Pick up dog poo", date: "Friday", completed: false),
    
    ]
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func taskWasAdded(task: Task) {
        tasks.append(task)
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TaskCell", forIndexPath: indexPath) as! TaskCell
        
        selectedTask = tasks[indexPath.row]
        
        cell.taskName = "Task \(indexPath.row)"
        
        if task.completed{
        cell.taskDateAndStatus.text = "\(task.date) (Completed)"
        } else {
            cell.taskDateAndStatus.text = "\(task.date)"
        }
        
        return cell
    }

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "AddTaskSegue"{
            let addTaskViewController = segue.destinationViewController as! AddTaskViewController
            addTaskViewController.delegate = self
        } else if segue.identifier == "EditTaskSegue"{
            let addTaskViewController = segue.destinationViewController as! AddTaskViewController
            
            if let st = selectedTask{
                addTaskViewController.initialTask = st
            }
        }
    }
    

}
