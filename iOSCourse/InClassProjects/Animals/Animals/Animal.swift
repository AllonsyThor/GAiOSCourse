//
//  Animal.swift
//  Animals
//
//  Created by Catherine Kelleher on 11/16/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class Animal{
    var species: String = ""
    var name: String = ""
    
    func whichAnimal() -> String{
       return("The animal is a \(species), its name is \(name)")
    
    }

}
