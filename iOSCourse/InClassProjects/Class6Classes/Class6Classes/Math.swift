//
//  Math.swift
//  Class6Classes
//
//  Created by Catherine Kelleher on 11/10/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit


//Create a Math class that can add two numbers, multiply two numbers, divide two numbers. Create an app that contains two text fields and several buttons, representing math operations. Hook this up to your Math class.


class Math {

    var operator1: Int = 8
    var operator2: Int = 4
    
    func add() -> Int {
        return operator1 + operator2
    }
    
    func subtract() -> Int {
        return operator1 - operator2
    }
    
    func times() -> Int{
        return operator1 * operator2
    }
    
    func divide() -> Int{
        return operator1 / operator2
    }

}

