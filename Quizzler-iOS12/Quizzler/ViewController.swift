//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var currentQuestionIndex = 0
    var score = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else {
            pickedAnswer = false
        }
        
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        questionLabel.text = allQuestions.list[currentQuestionIndex].questionText
        progressLabel.text = "\(currentQuestionIndex + 1) / \(allQuestions.list.count)"
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(currentQuestionIndex + 1)
        // update progress bar
    }
    

    func nextQuestion() {
        if currentQuestionIndex == allQuestions.list.count - 1 {
            let alert = UIAlertController(title: "u done", message: "You finished! Wanna do it again?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        } else {
            currentQuestionIndex += 1
            updateUI()
        }
    }
    
    
    func checkAnswer() {
        let isCorrect = pickedAnswer == allQuestions.list[currentQuestionIndex].answer
        
        if isCorrect {
            score += 100
            ProgressHUD.showSuccess("Correct!")
        } else {
            ProgressHUD.showError("Zoinks... no.")
        }
    }
    
    
    func startOver() {
        currentQuestionIndex = 0
        score = 0
        updateUI()
    }
}
