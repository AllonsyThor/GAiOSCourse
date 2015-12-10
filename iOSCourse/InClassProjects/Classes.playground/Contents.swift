//: Playground - noun: a place where people can play

import UIKit

class Student {

    //Type property
    static var totalNumberOfStudents: Int = 0
    
    //Type Methods
    static func describe(){
        print("There are \(totalNumberOfStudents) number of Students")
    }
    
    //Instance Properties
    var name: String
    var grade: Int
    
    init(name: String, grade: Int){
        self.name = name
        self.grade = grade
        
        Student.totalNumberOfStudents++
    }
    
    //Instance Methods
    func describe(){
        print("My name is \(name) and my grade is \(grade)")
    }

    func updateGrade(newGrade: Int){
        grade = newGrade
    }
}

Student.totalNumberOfStudents

var lewis = Student(name: "Lewis", grade: 95)
lewis.grade
lewis.name
lewis.describe()

lewis.updateGrade(90)

var katie = Student(name: "Katie", grade: 100)
katie.describe()

Student.totalNumberOfStudents
Student.describe()

NSNotificationCenter.defaultCenter()
