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
        
        var isPrime = true
        let number = Int(userNumber.text!)
        var i = 2
        
        if number == 1 {
            isPrime = false
            responseField.text = "Nope \("number") has more than itself and the number one as factors"
        }
        
        while i < number! {
            
            if number! % i == 0 {
                isPrime = false
                responseField.text = "Nope \("number") has more than itself and the number one as factors"
            } else {
                responseField.text = "Yes. \("number") is a prime number!"
            }
            
            i += 1
            
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

