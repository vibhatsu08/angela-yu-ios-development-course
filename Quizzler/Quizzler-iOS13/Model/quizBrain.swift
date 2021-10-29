//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Vedant Mistry on 27/10/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quiz = [ //is now a collection of Question objects.
        Question(text: "Thor is of midgard?", answer: "False"),
        Question(text: "Tony Stark is Iron Man?", answer: "True"),
        Question(text: "Captain America is the winter soldier?", answer: "False"),
        Question(text: "Thor is of midgard?", answer: "False"),
        Question(text: "Venom is the son of Carnage?", answer: "False"),
        Question(text: "James Rhodes is War Machine", answer: "True"),
        Question(text: "Howard Stark and Howard the duck are the same?", answer: "False")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }
        else{
            return false
        }
    }
    
    func getScore() -> Int{
        return score
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float{
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
        }
        
    }
}
