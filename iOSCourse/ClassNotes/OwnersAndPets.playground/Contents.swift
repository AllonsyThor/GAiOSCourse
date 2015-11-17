//: Playground - noun: a place where people can play

import UIKit

//Simulate an interaction between an owner and a dog
//Owner is able to feed the dog...then any pet!!!

@objc protocol Moveable{

    func moveForward()
    func moveBackward()
    func moveLeft()
    func moveRight()
    
    //Optional
    optional func moveSideways()
}

class Car : Moveable{
    @objc func moveForward(){
        print("I'm driving forward")
    }
    
    @objc func moveBackward(){
        print("I'm driving backward")
    }
    
    @objc func moveLeft(){
        print("I'm driving left")
    }
    
    @objc func moveRight(){
        print("I'm driving right")
    }

}


class Fish : Moveable{
    @objc func moveForward(){
        print("I'm swimming forward")
    }
    
    @objc func moveBackward(){
        print("I'm swimming backward")
    }
    
    @objc func moveLeft(){
        print("I'm swimming left")
    }
    
    @objc func moveRight(){
        print("I'm swimming right")
    }

}

var moveable : Moveable = Fish()
var moveable2 : Moveable = Car()

moveable.moveBackward()
moveable2.moveForward()






//Make classes conceptually
class Owner{
    //Principle #2: Encapsulation, protecting our data from direct access
    private var name: String?
    private var pet: Pet?
    
    init(name: String){
        self.name = name
    }
    
    func feedPet(foodAmount: Double){
        //Abstraction
        pet!.eat(foodAmount)
    }
}

//Principle #3 Inheritance
class Pet{
    var happiness = 50.0
    var health = 80.0
    
    //Principle #1: Abstraction, making a simple interface to use
    func eat(foodAmount: Double){
        happiness += (foodAmount * 0.5)
        health += (foodAmount * 0.5)
        //Many more properties to modify...
    }
}


    class Cat: Pet{}


    class Dog: Pet{}

var owner2 = Owner(name: "Katie")
//Principle #4: Polymorphism
owner2.pet = Cat() //A dog can take the shape of a pet because superclass is pet
//Can specify parent class and any child can take properties of parent class
owner2.feedPet(8.0)
