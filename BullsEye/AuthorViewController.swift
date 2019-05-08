//
//  AuthorViewController.swift
//  BullsEye
//
//  Created by Vetrichelvan Jeyapalpandy on 09/05/19.
//  Copyright © 2019 Vetrichelvan Jeyapalpandy. All rights reserved.
//

import UIKit

class AuthorViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        image.layer.borderWidth = 2
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
