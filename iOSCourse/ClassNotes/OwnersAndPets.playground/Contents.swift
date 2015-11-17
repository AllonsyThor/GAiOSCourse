//: Playground - noun: a place where people can play

import UIKit

//Simulate an interaction between an owner and a dog
//Owner is able to feed the dog...then any pet!!!


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
