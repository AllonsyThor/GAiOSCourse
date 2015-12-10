//
//  Task.swift
//  MyTaskApp
//
//  Created by Catherine Kelleher on 11/30/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import Foundation


class Task{
    var name: String
    var date: String
    var completed: Bool

    init(name: String, date: String, completed: Bool){
        self.name = name
        self.date = date
        self.completed = completed
    
    }

}