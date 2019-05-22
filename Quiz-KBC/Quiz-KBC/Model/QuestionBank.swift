//
//  QuestionBank.swift
//  Quiz-KBC
//
//  Created by SunilKumarM on 21/05/19.
//  Copyright © 2019 SunilKumarM. All rights reserved.
//

import Foundation

class QuestionBank{
    
    
    var questions : Array = [Question]()
    
    
    init() {
        
        questions.append(Question(text: "Who won the Best Footballer 2016 in the World?", opt1: "Cristiano Ronaldo", opt2: "Cristiano Robert", opt3: "Robert Paul", opt4: "Mark Admin", answer: 1))
        questions.append(Question(text: "Which of the following countries has agreed to accept the payment of export of oil and petroleum products to India, in rupee terms instead of dollar or any other currency?", opt1: "Kuwait", opt2: "UAE", opt3: "Iran", opt4: "Iraq", answer: 3))
        questions.append(Question(text: "As per the newspaper reports Government of India has finally agreed to purchase advanced MRMRs for its naval forces. What are these MRMRs? ", opt1: "Aircrafts", opt2: "Warships", opt3: "Submarines", opt4: "Rocket Launcher ", answer: 1))
        questions.append(Question(text: "Which of the following agencies/organizations decided to cancel 122 Licenses of 2G Spectrum issued by the Government of India to various companies and asked the Government to do the process afresh? ", opt1: "Comptroller and auditor general of India ", opt2: "Supreme court of India ", opt3: "Confederation of Indian Industry ", opt4: "Reserve bank of India ", answer: 2))
        questions.append(Question(text: "Which of the following countries approved a new constitution of the country in a referendum through secret voting held in February 2012? ", opt1: "Libya", opt2: "UAE", opt3: "Iran", opt4: "Syria", answer: 4))
        questions.append(Question(text: "Which of the following countries has signed a 'Non-Aggression Pact' with Sudan? ", opt1: "Uganda", opt2: "Kenya", opt3: "South Africa", opt4: "South Sudan", answer: 4))
        questions.append(Question(text: "The sensitive index of National Stock Exchange of India is popularly known as.... ", opt1: "SENSEX", opt2: "MCS", opt3: "NIFTY", opt4: "CRIS", answer: 3))
        questions.append(Question(text: "Which of the following countries decided to add 3000 more centrifuges to its Uranium enrichment programs, despite touch economic sanctions on it from various western countries? ", opt1: "Syria", opt2: "Sudan", opt3: "Iran", opt4: "Egypt", answer: 3))
        questions.append(Question(text: "Who among the following Indians was conferred the prestigious, National Medal of Arts and Humanities, awarded by US President in February 2012? ", opt1: "Dr. Montek Singh Ahluwalia", opt2: "Ms. Meira Kumar", opt3: "Dr. Amartya Sen", opt4: "Shri Nr Narayan Murthy", answer: 3))
        questions.append(Question(text: "The proceeds from disinvestment of various public-sector undertaking are channelized into....", opt1: "National Investment Fund", opt2: "Venture Capital Fund", opt3: "Rural Innovation Fund", opt4: "Portfolio Risk Fund", answer: 1))
        questions.append(Question(text: "World Day for Water is observed on which of the following dates?", opt1: "22 August", opt2: "22 July", opt3: "22 March", opt4: "22 October", answer: 3))
        
    
    }
    
    
}
