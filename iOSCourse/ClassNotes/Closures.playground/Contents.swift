//: Playground - noun: a place where people can play

import UIKit

////Declaring a function
//func sayHello(name: String){
//    print("Hello \(name)")
//}
//
////Declaring a closure
//var myClosure: (String) -> Void = { (name: String) -> Void in
//    print("Hello \(name)")
//
//}
//
////Invoke the closure
//myClosure("David")
//
//
//var name = "Tock"
//
//func executeClosure(success: () -> Void){
//
//    print("Downloading a big chunk of file that'll take 10 mins or 8 mins...")
//    success()
//
//}
//
//var party = { () -> Void in
//    print("Everything is done. Let's party!!!")
//
//}
//
//executeClosure(party)
//
//
////Pass closures around
//var characters: [String] = ["Z", "B", "C", "A", "X"]
//
//
////Is element one before element two?
//var isOrderedBeforeClosure = { (elementOne: String, elementTwo: String) -> Bool in
//    return elementOne < elementTwo
//}
//
//characters.sortInPlace(isOrderedBeforeClosure)

//func successOrFailure(passed: () -> Void, fail: () -> Void, pass: Bool){
//    print("Processing a really really long task...")
//    if pass {
//        passed()
//    } else {
//        fail() }
//}
//
//var passed = { () -> Void in
//    print("You passed!")
//
//}
//
//var fail = { () -> Void in
//    print("Try again...")
//}

func hackIntoFacebook(weDidIt: Bool, success:(data: String) -> Void, failure:(errorMessage: String) -> Void){
    
    print("Trying to hack Facebook...")
    
    if weDidIt {
        success(data: "Mark's password is harvard sucks")
    
    } else {
        failure(errorMessage: "It's too hard =(. Need to study more.")
    }

}


var onSuccess = {(data: String) -> Void in
    print("This is successful!")
}

var onFaliure = {(errorMessage: String) -> Void in
    print("This is a faliure")
}


hackIntoFacebook(true, success: onSuccess, failure: onFaliure)
