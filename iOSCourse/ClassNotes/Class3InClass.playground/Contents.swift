//: Playground - noun: a place where people can play

import UIKit

var name:String = "Katie"
var age:Int = 31

print("Hello \(name), you are \(age) years old!")

let number = 5

if (number%2==0){
    print("Number is even")
} else {
    print("Number is odd")
}

var newAge = 45
if (newAge >= 21){
    print("You can drink")
} else if (newAge >= 18){
    print("You can vote")
} else {
    print("You can drive")
}



// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

var user = 61

if (user > 16 && user < 18){
    print ("You can drive")
} else if (user > 18 && user < 21){
    print("You can drive & vote")
} else if (user > 21) {
    print("You can drive, vote and drink, but not at the same time")
}



// EXTRA BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below


//Starting with 0, add the sum of the two previous numbers to achieve the next number in the sequence