//
//  CalculatorLogic.swift
//  Calculator
///  Created by Victor on 4/21/20.


import Foundation

class CalculatorLogic {

  //private var isFinishedTypingNumber: Bool = true
    
 var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    
 func calculate(symbol: String) -> Double?{
    if symbol == "+/-" {
        return number * -1
        }
    else if symbol == "AC" {
            return 0.0
        }
    else if symbol == "%" {
       return number/100
      }
    else {
        return nil
      }
   }
    

    func setToDouble(){
     
//        private var displayValue: Double {
//            get {
//                guard let number = Double(displayLabel.text!) else {
//                    fatalError("Cannot convert displayLabel.text to a Double")
//                }
//                return number
//            }
//            set {
//                 displayLabel.text = String(newValue)
//            }
//        }
    }

    
    func calcTop(){
    

    }
    

    func checkDot(){
//    if let numValue = sender.currentTitle {
//
//         if isFinishedTypingNumber {
//             displayLabel.text = numValue
//             isFinishedTypingNumber = false
//         }
//         else {
//             if numValue == "."{
//                let isInt = floor(displayValue) == displayValue
//                 // if for example 8 != 8.1 then no need to put . anymore // does not work for 0.0 !
//                 if !isInt{
//                     return
//                 }
//             }
//             displayLabel.text?.append(numValue)
//         }
//       }
    }
        
}
