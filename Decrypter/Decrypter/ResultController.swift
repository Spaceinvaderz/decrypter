//
//  ResultController.swift
//  Decrypter
//
//  Created by Максим Музафаров on 16/10/15.
//  Copyright © 2015 Максим Музафаров. All rights reserved.
//

import UIKit

class ResultController: UIViewController {
    
    var enteredText = ""
    @IBOutlet weak var encryptedText: UITextView!
    @IBOutlet weak var resultTab: UITabBarItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        encryptedText.text = enteredText
        // Any other logic
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}