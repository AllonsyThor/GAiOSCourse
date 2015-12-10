//: Playground - noun: a place where people can play

import UIKit

var companies: [String] = ["Apple", "Dell", "Ben & Jerry's", "General Assembly"]

////Access number of elements
//companies.count
//
////Add an element to end of the array
//companies.append("Microsoft")
//
////Insert an element at a particular index
//companies.insert("Jamba Juice", atIndex: 2)
//
////Access element at index 3
//companies[3]
//
////Get index of element that is "General Assembly"
//companies.indexOf("General Assembly")
//
////Remove element at index, returns the object that you removed so that you can use one last time
//var x = companies.removeAtIndex(3)
//
////Checking if an array is empty
//companies.isEmpty
//
////Check if array contains "General Assembly"
//companies.contains("General Assembly")
//
////Check if array DOES NOT contain "General Assembly"
//!companies.contains("General Assembly")
//
////Iterate an array (accessing every element)
//for  var i = 0; i < companies.count; ++i {
//    let company = companies[i]
//    print("Company is \(company)")
//}
//
////For in loop
for company in companies{
//    print("Company is \(company)")
}



//Create a dictionary
var marker = ["color": "blue", "brand": "Expo"]

//Create an empty dictionary
var dog = Dictionary<String, String>()

// Add a key value pair
marker["origin"] = "U.S.A"

//Remove a key value pair
marker["color"] = nil

// Number of key value pairs
marker.count

// Check if marker dictionary is empty
marker.isEmpty

// Change a value for a given key
marker["brand"] = "Sharpie"

//Accessing a value for a given key
marker["brand"]

// Iterate over a dictionary, access every key value pair
for (key, value) in marker{
    print("key is \(key), value is \(value)")
}

