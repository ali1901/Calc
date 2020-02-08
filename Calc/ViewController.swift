//
//  ViewController.swift
//  Calc
//
//  Created by Ali Safari on 2/3/20.
//  Copyright © 2020 Ali Safari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculation = Calculation()
    
    var input1 = Int()
    var gotInput1 = false
    var input2 = Int()

    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func number(_ sender: UIButton) {
        displayLabel.text?.append("1")
    }
    @IBAction func add(_ sender: UIButton) {
        if displayLabel.text != nil || displayLabel.text != "" {
            if gotInput1 == false {
                input1 = Int(displayLabel.text!)!
                displayLabel.text = ""
                gotInput1 = true
            } else {
                input2 = Int(displayLabel.text!)!
                displayLabel.text = ""
            }
        }
    }
    @IBAction func equal(_ sender: UIButton) {
        if displayLabel.text != nil || displayLabel.text != "" {
            input2 = Int(displayLabel.text!)!
            displayLabel.text = ""
        }
        
        
        print("I1:",input1)
        print("I2:", input2)
        print(String(calculation.addition(input1: input1, input2: input2)))
        displayLabel.text = String(calculation.addition(input1: input1, input2: input2))
        calculation.prn()
    }
    
}

extension Calculation {
    func prn () {
        print("Coming From extention")
    }
}

