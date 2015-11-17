//Switches & For Loops

import UIKit

//Switch Statement - required to be exhaustive

var firstName = "Katie"

switch firstName{
    case "Bennet":
        print("Hey that's pretty awesome!")
    case "Will", "Bill", "Jack":
        print("Pretty cool too!")
    case "Lewis":
        print("Hmmm..")
    case "Katie":
        print("Awesome!")
    default:
        print("None")
}


switch 1500 {
    case 1...10:
        print("Pretty cool too!")
    case 1000...2000:
        print("Thousands")
    default:
        print("Nope")
}

//For Loops - executes a segment of code for a finite amount of times
// initialization statement -> initialize your counter variable
// condition statement -> test counter against a rule
// increment/decrement statement-> update your counter

// for <initialization>; <conditional>; <increment/decrement> {}

for var counter = 0; counter < 10; ++counter {
    print("Pretty cool too!")
}

var counter2 = 0
for ;; {
    if counter2 > 9 {
        break //keyword you use to get out of loop
    }
    
    print("Pretty cool too! \(counter2)")
    ++counter2
}


//While - exexcute a segment of code until a condition is false

var diceRoll = arc4random_uniform(6) //gives you a random number between 0-6

while diceRoll < 3 {
    print("Rolling the dice. Current Dice Roll Is: \(diceRoll)")
    diceRoll = arc4random_uniform(6)
}

var diceRolls: UInt32 = 6 //arc4random_uniform(6)

repeat {
    print("Rolling the dice. Current Dice Roll Is: \(diceRolls)")
    diceRolls = arc4random_uniform(6)
} while diceRolls < 5











    