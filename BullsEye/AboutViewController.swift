//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Vetrichelvan Jeyapalpandy on 09/05/19.
//  Copyright © 2019 Vetrichelvan Jeyapalpandy. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let unwrappedVariable = webView else {
            print("variable is nil")
            return
        }
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            unwrappedVariable.load(request)
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
