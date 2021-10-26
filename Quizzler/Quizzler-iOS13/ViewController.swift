//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!

    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
     
    @objc func updateUI(){
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
    
}

