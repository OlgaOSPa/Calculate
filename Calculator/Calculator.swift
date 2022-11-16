//
//  ViewController.swift
//  Calculator
//
//  Created by user on 09.11.2022.
//

import UIKit

class Calculator: UIViewController {



    @IBOutlet weak var outlineLabel:UILabel!

    var firstNumber: String = ""
    var secondNumber: String = ""
    var operand: String = ""
    
    
    
    
    
    @IBAction func digitalTapped(_ sender: UIButton) {
        if operand.isEmpty {
            firstNumber += sender.currentTitle!
            outlineLabel.text = firstNumber
            
            
        } else {
            secondNumber += sender.currentTitle!
            outlineLabel.text = secondNumber
        }
 
        print("""
pervoe chislo: \(firstNumber)
vtoroe chislo: \(secondNumber)
treetie chislo: \(operand)
""")
    }
    @IBAction func operandAction(_ sender: UIButton) {
        guard !firstNumber.isEmpty else { return }
        operand += sender.currentTitle!
        
    }
    
    @IBAction func ClearCalculatorAction (_ sender: UIButton) {
        firstNumber = ""
        secondNumber = ""
operand = ""
        outlineLabel.text = "0"
    }

    @IBAction func resultAction(_ sender: UIButton) {
        var result: Double = 0.0
    
        switch operand {
        case "*":
        result = Double(firstNumber)! * Double(secondNumber)!
        case"/":
            guard isZero(number: secondNumber) else { return print("Error") }
            result = Double(firstNumber)! / Double(secondNumber)!
        case"+":
            result = Double(firstNumber)! + Double(secondNumber)!
        case"-":
            result = Double(firstNumber)! - Double(secondNumber)!
        default:
            break
        }
    
        outlineLabel.text = String(result)
    
    }
        

    func showResult (number: Double) {
        if number.truncatingRemainder(dividingBy: 1.0) == 0.0 {
    }
    }
    func isZero(number: String) -> Bool {
        if number == "0" {
            return true
        
        } else{
            return false
        }
        }

    
}

