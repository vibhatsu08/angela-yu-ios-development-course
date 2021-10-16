//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var diceImageView1: UIImageView!
    @IBOutlet var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = diceArray[Int.random(in: 1...5)]
        diceImageView2.image = diceArray[Int.random(in: 1...5)]
        
        leftDiceNumber += 1 //incrementing the value of leftDiceNumber by 1
        rightDiceNumber -= 1 //decrementing the value of rightDiceNumber by 1
        
        
    }
    
}

