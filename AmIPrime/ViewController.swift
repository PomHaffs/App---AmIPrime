//
//  ViewController.swift
//  AmIPrime
//
//  Created by Tomas-William Haffenden on 13/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var responseField: UILabel!
    
    @IBOutlet weak var userNumber: UITextField!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if let userEnteredString = userNumber.text {
            
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                
                if number == 1 {
                    isPrime = false
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                    i += 1
                    
                }
                
                if isPrime {
                    responseField.isHidden = false
                    responseField.text = "Yep. \(number) is a prime number, because it has only itself and the number 1 as factors."
                } else {
                    responseField.isHidden = false
                    responseField.text = "Nope. \(number) has more than itself and the number one as factors so it is not prime number."
                }
                
            } else {
                responseField.isHidden = false
                responseField.text = "Please enter a positive whole number"
                
            }
            
        }
        
    
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

