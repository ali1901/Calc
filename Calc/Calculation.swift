//
//  Calculation.swift
//  Calc
//
//  Created by Ali Safari on 2/3/20.
//  Copyright © 2020 Ali Safari. All rights reserved.
//

import Foundation

protocol consolPrinter {
    func cp()
    var toPrint: String {get}
}

class Calculation: consolPrinter {
    
    func cp() {
        print("result = \(toPrint) calculated.")
    }
    
    var toPrint: String = ""
    
    
    var result: Int = 0
    
    func addition(input1: Int, input2: Int) -> Int {
        result = input1 + input2
        toPrint = String(result)
        return result
    }
    
    //init(result: Int) {
    //    self.result = result
    //}
    
}
