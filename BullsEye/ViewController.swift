//
//  ViewController.swift
//  BullsEye
//
//  Created by Vetrichelvan Jeyapalpandy on 04/05/19.
//  Copyright © 2019 Vetrichelvan Jeyapalpandy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }

    @IBAction func showAlert() {
        
       
        
        
        let differnce = abs(currentValue - targetValue)
        let points = 100 - differnce
        
        
        
        
        let message = "You have scored: \(points) points"
       
        
        
        let alert = UIAlertController(title: "Score", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider:UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabel()
    }
    
    func updateLabel() {
        targetLabel.text = String(targetValue)
    }
    
   
}

