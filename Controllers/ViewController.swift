//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weight: UILabel!
    @IBAction func calculatePressed(_ sender: UIButton) {
        let BMI = String(format: "%.1f", Float(weightSlider.value) / Float(pow(heightSlider.value, 2))) 
        print(BMI)
        let secondVC = SecondViewController()
        secondVC.bmiValue = BMI
        self.present(secondVC, animated: true, completion: nil)
    }
    @IBAction func heightSliderChange(_ sender: UISlider) {
        height.text = "\(round(sender.value * 100) / 100)m"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weight.text = "\(round(sender.value * 10) / 10)Kg"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

