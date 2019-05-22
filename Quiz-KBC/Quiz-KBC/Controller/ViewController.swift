//
//  ViewController.swift
//  Quiz-KBC
//
//  Created by SunilKumarM on 21/05/19.
//  Copyright © 2019 SunilKumarM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var option1: UILabel!
    @IBOutlet weak var option2: UILabel!
    @IBOutlet weak var option3: UILabel!
    @IBOutlet weak var option4: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionView: UIView!
    @IBOutlet weak var questionCount: UILabel!
    
    let allQuestions = QuestionBank()
    var selectedAnswer : Int = 0
    var questionNumber : Int = 0
    let countOfQuestions = QuestionBank().questions.count
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        nextQuestion()
        setOptions()
        
        questionView.layer.borderWidth = 0.1
        questionView.layer.cornerRadius = 20.0
        questionView.backgroundColor = #colorLiteral(red: 0.8912793464, green: 0.5632046825, blue: 0.2077954303, alpha: 0.2000160531)
        
        
        
    }
    @IBAction func restartQuestions(_ sender: Any) {
        
        let alertControl = UIAlertController(title: "RESTART?", message: "Would you like to restart?", preferredStyle: .alert)
        let restart = UIAlertAction(title: "YES", style: .default) { (_) in
            self.startOver()
            self.score = 0
            self.scoreLabel.text = "Score : \(self.score)"
        }
        let cancel = UIAlertAction(title: "NO", style: .destructive, handler: nil)
        
        alertControl.addAction(restart)
        alertControl.addAction(cancel)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        
        if sender.tag == 1{
            selectedAnswer = 1
            
        }else if sender.tag == 2{
            selectedAnswer = 2
            
        }else if sender.tag == 3{
            selectedAnswer = 3
            
        }else{
            selectedAnswer = 4
        }
        
        checkAnswer()
        setOptions()
        questionNumber += 1
        nextQuestion()
        
        
    }
    
    
    func setOptions(){
        option1.text = QuestionBank().questions[questionNumber].optionA
        option2.text = QuestionBank().questions[questionNumber].optionB
        option3.text = QuestionBank().questions[questionNumber].optionC
        option4.text = QuestionBank().questions[questionNumber].optionD
    }
    

    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.questions[questionNumber].correctAnswer
        if correctAnswer == selectedAnswer {
            ProgressHUD.showSuccess("Awesome, It's Correct.!")
            let oneScore = 9999/countOfQuestions
            score = score + oneScore
        }else{
            ProgressHUD.showError("Awe..! Wrong..X")
        }
        updateUI()
        
    }
    
    
    func updateUI(){
        
        questionCount.text = "\(questionNumber + 1) / \(countOfQuestions)"
        scoreLabel.text = "Score : \(score)"
        
    }
    
    
    
    func nextQuestion() {
        
        if questionNumber < countOfQuestions {
            questionLabel.text = allQuestions.questions[questionNumber].question
            setOptions()
            updateUI()
        }else{
            let alert = UIAlertController(title: "Awesome", message: "You have finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction.init(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
                self.score = 0
                self.scoreLabel.text = "Score : \(self.score)"

        }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
    }

 }
    
    func startOver() {
        questionNumber = 0
        nextQuestion()
        updateUI()
        
    }
}

