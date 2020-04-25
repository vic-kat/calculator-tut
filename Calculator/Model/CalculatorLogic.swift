//
//  CalculatorLogic.swift
//  Calculator
///  Created by Victor on 4/21/20.


import Foundation

struct CalculatorLogic {
    
 var number: Double

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
}
