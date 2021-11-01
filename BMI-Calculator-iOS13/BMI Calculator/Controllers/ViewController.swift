//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var heightValueLabel: UILabel!
    @IBOutlet var weightSlider: UISlider!
    @IBOutlet var weightValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightValue = String(format: "%.2f", sender.value)
        heightValueLabel.text = "\(heightValue) m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = Int(sender.value)
        weightValueLabel.text = "\(weightValue) kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = (weight / pow(height, 2))
        print(bmi)
        
        let secondVC = SecondViewController()
        self.present(secondVC, animated: true, completion: nil)
        
    }
    

}

