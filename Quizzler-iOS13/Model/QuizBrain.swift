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
    
//    let quiz = [
//        Question(question: "A slug's blood is green.", answer: "True"),
//        Question(question: "Approximately one quarter of human bones are in the feet.", answer: "True"),
//        Question(question: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
//        Question(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
//        Question(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
//        Question(question: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
//        Question(question: "You can lead a cow down stairs but not up stairs.", answer: "False"),
//        Question(question: "Google was originally called 'Backrub'.", answer: "True"),
//        Question(question: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
//        Question(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
//        Question(question: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
//        Question(question: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
//    ]
    
    let quiz2 = [
           Question(question: "Which is the largest organ in the human body?", options: ["Heart", "Skin", "Large Intestine"], answer: "Skin"),
           Question(question: "Five dollars is worth how many nickels?", options: ["25", "50", "100"], answer: "100"),
           Question(question: "What do the letters in the GMT time zone stand for?", options: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], answer: "Greenwich Mean Time"),
           Question(question: "What is the French word for 'hat'?", options: ["Chapeau", "Écharpe", "Bonnet"], answer: "Chapeau"),
           Question(question: "In past times, what would a gentleman keep in his fob pocket?", options: ["Notebook", "Handkerchief", "Watch"], answer: "Watch"),
           Question(question: "How would one say goodbye in Spanish?", options: ["Au Revoir", "Adiós", "Salir"], answer: "Adiós"),
           Question(question: "Which of these colours is NOT featured in the logo for Google?", options: ["Green", "Orange", "Blue"], answer: "Orange"),
           Question(question: "What alcoholic drink is made from molasses?", options: ["Rum", "Whisky", "Gin"], answer: "Rum"),
           Question(question: "What type of animal was Harambe?", options: ["Panda", "Gorilla", "Crocodile"], answer: "Gorilla"),
           Question(question: "Where is Tasmania located?", options: ["Indonesia", "Australia", "Scotland"], answer: "Australia")
    ]
    
    mutating func isACorrectAnswer(_ userAnswer: String) -> Bool {
        
        let correctAnswer = quiz2[currentQuestion].answer
        
        if userAnswer == correctAnswer{
            score += 1
            return true
        }else{
            return false
        }
        
    }
    
    func getQuestionText() -> String {
        return quiz2[currentQuestion].question
    }
    
    func getOptionAnwser(positionOption: Int) -> String {
        return quiz2[currentQuestion].options[positionOption]
    }
    
    func getProgress() -> Float {
        let percentageOfQuestions = Float(currentQuestion + 1) / Float(quiz2.count)
        return percentageOfQuestions
    }
    
    mutating func nextQuestion() {
        if currentQuestion + 1 < quiz2.count{
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
