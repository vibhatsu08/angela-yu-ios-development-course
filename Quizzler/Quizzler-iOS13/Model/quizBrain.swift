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
    
    func checkAnswer(_ userAnswer: String){
        if userAnswer == quiz[questionNumber].answer{
            //user got it right
        }
        else{
            //user got it wrong
        }
    }
}
