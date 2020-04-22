//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true

    
    
    private var displayValue: Double {
        
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert displayLabel.text to a Double")
            }
            return number
        }
        set {
             displayLabel.text = String(newValue)
        }
        
    }
    
   
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {

        isFinishedTypingNumber = true

        if let calcMethod =  sender.currentTitle {
        let calculatorLogic = CalculatorLogic(number: displayValue )
        
        guard let result = calculatorLogic.calculate(symbol: calcMethod) else {
             fatalError("The result of calculation is nil")
            }
         displayValue = result
       }
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        //What should happen when a number is entered into the keypad
        
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            }
            else {
                if numValue == "."{
                   let isInt = floor(displayValue) == displayValue
                    // if for example 8 != 8.1 then no need to put . anymore // does not work for 0.0 !
                    if !isInt{
                        return
                    }
                }
               
                displayLabel.text?.append(numValue)
            }
        }
    }
}

