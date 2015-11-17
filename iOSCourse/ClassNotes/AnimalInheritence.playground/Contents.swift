//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
    var legs: Int?
    var eyes: Int?
    var warmBlooded: Bool?
    var coldBlooded: Bool?
    
    func description(){
    
        print("I have \(legs!) legs, \(eyes!) eyes. Am I warm blooded? \(warmBlooded!). Am I cold blooded? \(coldBlooded!).")
    }
}

var a = Animal()
a.legs = 4
a.eyes = 2
a.coldBlooded = false
a.warmBlooded = true

a.description()

class Cat : Animal{
    var whiskers: Int?
    
    //Custom initializer
    init(legs: Int, eyes: Int, warmBlooded: Bool, coldBlooded: Bool, whiskers: Int){
    super.init() //have to make sure parent class is initialized
        
    self.legs = legs
    self.eyes = eyes
    self.warmBlooded = warmBlooded
    self.coldBlooded = coldBlooded
    self.whiskers = whiskers
    }
    
    override func description() {
        super.description()
        print("Whiskers: \(self.whiskers!)")
//       print("I have \(legs!) legs, \(eyes!) eyes and \(whiskers!) whiskers. Am I warm blooded? \(warmBlooded!). Am I cold blooded? \(coldBlooded!).")
    }
    
    func meow(){
    }
}

var c : Animal = Cat(legs: 5, eyes: 4, warmBlooded: true, coldBlooded: false, whiskers: 10)

