//
//  Question.swift
//  Quiz-KBC
//
//  Created by SunilKumarM on 21/05/19.
//  Copyright © 2019 SunilKumarM. All rights reserved.
//

import Foundation


class Question {
    
    let question : String
    let optionA : String
    let optionB : String
    let optionC : String
    let optionD : String
    let correctAnswer : Int
    
    init(text : String, opt1 : String, opt2 : String, opt3 : String, opt4 : String, answer : Int) {
        question = text
        optionA = opt1
        optionB = opt2
        optionC = opt3
        optionD = opt4
        correctAnswer = answer
    
    }
    
    
}


// MARK : We can able to create the above same block of code using struct shown as below.

//struct Questions {
//    let question : String
//    let optionA : String
//    let optionB : String
//    let optionC : String
//    let optionD : String
//    let correctAnswer : String
//}
