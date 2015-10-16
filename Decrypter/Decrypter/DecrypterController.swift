//
//  DecrypterController.swift
//  Decrypter
//
//  Created by Максим Музафаров on 16/10/15.
//  Copyright © 2015 Максим Музафаров. All rights reserved.
//


import UIKit

class DecrypterController: UIViewController {
    

    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tabBar = segue.destinationViewController as? UITabBarController

        let resultVC = tabBar?.viewControllers?[1] as? ResultController
        
        resultVC?.enteredText = inputField.text!
        tabBar?.selectedIndex = 1
    }
   
}