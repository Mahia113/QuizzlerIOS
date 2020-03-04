//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var optionAnswerOne: UIButton!
    @IBOutlet weak var optionAnswerTwo: UIButton!
    @IBOutlet weak var optionAnswerThree: UIButton!
    
    var quizBrain = QuizBrain()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        if quizBrain.isACorrectAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        
        optionAnswerOne.setTitle(quizBrain.getOptionAnwser(positionOption: 0), for: .normal)
        optionAnswerTwo.setTitle(quizBrain.getOptionAnwser(positionOption: 1), for: .normal)
        optionAnswerThree.setTitle(quizBrain.getOptionAnwser(positionOption: 2), for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        optionAnswerOne.backgroundColor = UIColor.clear
        optionAnswerTwo.backgroundColor = UIColor.clear
        optionAnswerThree.backgroundColor = UIColor.clear
        
    }
}
