//
//  ViewController.swift
//  Guessing Game
//
//  Created by Will Epperson on 9/28/15.
//  Copyright © 2015 Epperson Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var userGuess: UITextField!
    @IBOutlet var response: UILabel!
    @IBOutlet var triesLabel: UILabel!
    
    var randomNumber = Int(arc4random_uniform(5) + 1)
    var numTries = 0
    
    @IBAction func submit(sender: AnyObject) {
        
        if Int(userGuess.text!) == randomNumber {
            response.text = "Correct! The number was \(randomNumber)"
        }
        else {
            response.text = "Try again!"
            numTries++
        }
        
        triesLabel.text = "Tries: \(numTries)"
        
    }

    @IBAction func reset(sender: AnyObject) {
        randomNumber = Int(arc4random_uniform(5) + 1)
        numTries = 0
        response.text = ""
        triesLabel.text = "Tries: \(numTries)"
    }
    
    // X-code generated
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        triesLabel.text = "Tries: \(numTries)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

