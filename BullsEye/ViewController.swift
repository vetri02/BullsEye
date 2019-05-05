//
//  ViewController.swift
//  BullsEye
//
//  Created by Vetrichelvan Jeyapalpandy on 04/05/19.
//  Copyright © 2019 Vetrichelvan Jeyapalpandy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello World", message: "This is my first app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider:UISlider) {
        print("Slider Value \(slider.value)")
    }
    
   
}

