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
        var heightValue = String(format: "%.2f", sender.value)
        heightValueLabel.text = "\(heightValue) m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        var weightValue = Int(sender.value)
        weightValueLabel.text = "\(weightValue) kg"
    }
    


}

