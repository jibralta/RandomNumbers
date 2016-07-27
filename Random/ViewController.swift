//
//  ViewController.swift
//  Random
//
//  Created by Gladys Umali on 7/26/16.
//  Copyright © 2016 Joy Umali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var enterNumberField: UITextField!
    @IBOutlet var outputLabel: UILabel!
    
    
    @IBAction func guessButton(_ sender: AnyObject) {
        
        let diceRoll = arc4random_uniform(11)
        
        if UInt32(enterNumberField.text!) == diceRoll {
            outputLabel.text = "You're Right!!"
        }
        
        else {
            if diceRoll > 1 || diceRoll == 0 {
            outputLabel.text = "Wrong! I was holding up \(diceRoll) fingers."
        }
            else {
            outputLabel.text = "Wrong! I was holding up \(diceRoll) finger."

            }
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

