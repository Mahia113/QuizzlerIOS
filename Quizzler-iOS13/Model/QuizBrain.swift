//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Anzen on 12/6/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var currentQuestion = 0
    var score = 0
    
    let quiz = [
        Question(question: "A slug's blood is green.", answer: "True"),
        Question(question: "Approximately one quarter of human bones are in the feet.", answer: "True"),
        Question(question: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
        Question(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
        Question(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
        Question(question: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
        Question(question: "You can lead a cow down stairs but not up stairs.", answer: "False"),
        Question(question: "Google was originally called 'Backrub'.", answer: "True"),
        Question(question: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
        Question(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
        Question(question: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
        Question(question: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
    ]
    
    mutating func isACorrectAnswer(_ userAnswer: String) -> Bool {
        
        let correctAnswer = quiz[currentQuestion].answer
        
        if userAnswer == correctAnswer{
            score += 1
            return true
        }else{
            return false
        }
        
    }
    
    func getQuestionText() -> String {
        return quiz[currentQuestion].question
    }
    
    func getProgress() -> Float {
        let percentageOfQuestions = Float(currentQuestion + 1) / Float(quiz.count)
        return percentageOfQuestions
    }
    
    mutating func nextQuestion() {
        if currentQuestion + 1 < quiz.count{
            currentQuestion += 1
        }else{
            currentQuestion = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
}
