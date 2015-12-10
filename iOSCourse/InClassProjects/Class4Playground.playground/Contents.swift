////: Playground - noun: a place where people can play
//
import UIKit
//
////For loop - executes a segment of code for a finite amount of times
//
//// for <initialization>; <conditional>; <increment/decrement> {}
//// initialization - initalizing a counter
//// conditional - setting up a rule for when the loop should keep going
//// increment/decrement statement - updating counter
//
//for var counter = 0; counter < 10; ++counter{
////    print("GA is awesome")
//}
//
////While loop - executes a segment of code until a condition is false
//
//
//var diceroll = arc4random_uniform(6)
//
//while diceroll < 3 {
//
//    print("Keep rolling the dice \(diceroll)...")
//    diceroll = arc4random_uniform(6)
//}
//
//print("The final roll is \(diceroll)")
//
//// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!
//
//var name = "Katie"
//print("Hello \(name), your name is \(name.characters.count) charactrs long!")
//
//// TODO: Print the sum of one hundred random numbers. Use arc4random_uniform() to generate random numbers.
//
//var sum = 0
//
//for var counter = 0; counter < 100; ++counter{
//    let rand = Int(arc4random_uniform(100))
//    sum += rand
//}
//print("The sum is \(rand)")
//
//
//
//
//// TODO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.
//
//for var fizzBuzz = 0; fizzBuzz < 101; ++fizzBuzz{
//    if fizzBuzz % 3 == 0 && fizzBuzz % 5 == 0 {
//        print("FizzBuzz")
//    }
//    else if (fizzBuzz % 3 == 0) {
//        print("Fizz")
//    } else if (fizzBuzz % 5 == 0) {
//        print("Buzz")
//    }
//}
//
//
//// SUPER EXTRA BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below

//Researched how to do this, found solution and implemented for this problem
var N = 37
var fib = 0
var fib1 = 1
for _ in 1...N {
    print(fib)
    var seq = fib + fib1
    fib1 = fib
    fib = seq
}

print(fib)


//DRY: Don't repeat yourself
//
//func greeting(firstName: String, lastName: String){ //_ lastName: String makes it so you don't declare lastName when calling function
//    
//    print("Hey \(firstName) \(lastName), looking good!")
//}
//
//// Call/invoke function
//greeting("Katie", lastName: "Kelleher")



//Parameters -> input
//Return values -> output

//func sum(x: Int, y: Int) -> Int{
//    let sum = x + y
//    return sum
//}
//var z = sum(5, y: 10)
//print("The sum is \(z)")

//// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"
//
//func hello(name: String){
//    print("Hello \(name)!")
//}
//
//hello("Katie")
//
//// TODO: Exercise: Implement this function
//// func printBiggerNumber(firstNumber: Int, secondNumber: Int)
//// Hint: Use an if statement
//
//func printBiggerNumber(firstNumber: Int, secondNumber: Int){
//    if firstNumber > secondNumber{
//        print("First number is bigger")
//    } else if secondNumber > firstNumber {
//        print("Second number is bigger")
//    }
//
//}
//
//printBiggerNumber(5, secondNumber: 10)
//
//// TODO: Write a function that prints out "Hello world!" 10 times
//// Hint: Use a for loop
//
//func helloWorld(){
//    for var i = 0; i < 10; ++i {
//        print("Hello world!")
//    }
//}
//
//helloWorld()
//
//// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" x times, with x being the parameter passed
//// Hint: Use a for loop
//
//func hitLine(x: Int){
//    for var i = 0; i < x; ++i {
//        print("Hit this line \(x) times!")
//    }
//
//}
//hitLine(20)
//
//
//
//// TODO:  Write a function that takes 3 cities, and returns one of them randomly
////- Hint: use let randomNumber = arc4random_uniform(3)
//
//
//func cities (city1: String, city2: String, city3: String) -> String{
//   
//    let randomNumber = arc4random_uniform(3)
//    
//    if randomNumber == 0 {
//        return city1
//    } else if randomNumber == 1 {
//        return city2
//    } else if randomNumber == 2 {
//        return city3
//    }
//    return cities("San Diego", city2: "Venice", city3: "London")
//}
//cities("San Diego", city2: "Venice", city3: "London")






//// SECTION 3: FUNCTIONS PT 2
//// TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal
//func yesNO(string1: String, string2: String) -> Bool {
//    return (string1 == string2)
////    if string1 == string2 {
////        return true
////    } else {
////        return false
////        }
////    }
//}
//
//yesNO("Dog", string2: "Cat")
//
//// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).
//
//func total (bill: Float, tip: Float) -> (bill: Float, tip: Float) {
//   let check = (bill * tip) + bill
//    return(check, tip)
//}
//
//var test = total(22.50, tip: 0.2)
//test.tip


// TODO: Write a function that takes in a string and returns a string that is the reverse of the input.
// Hint 1: Use a for loop to iterate through each character of the string (backwards)
// Hint 2: Append new strings using the + operator.
//Classmate's example
//func reverse(s: String) -> String{
//    var rString = ""
//for var i = s.characters.count -1; i > -1; --1{
//    let char = s[s.startIndex.advanceBy(i)]
//    rString += String(char)
//    }
//    return rStrng
//}
// reverse("hello")

// SUPER BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).
//var word = "racecar"
//var reverse = String(word.characters.reverse())
//func pallindrome (word: String, reverse: String) -> Bool {
//    return(word == reverse)
//}
//pallindrome("bob", reverse: "bob")

// SUPER BONUS TODO: Write a function that takes in a number and prints out whether it is prime or not


//func check (prime: Int) -> Bool{
//    for N in 2...prime - 1  {
//        if prime % N == 0{
//            return(false)
//        }
//    }
//    return(true)
//}
//
//check(56)





