//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by ROBIN MALHOTRA on 24/10/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
   
    var bmi: BMI?
    
    func getBMIValue() -> String {
    let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
    return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
    
    
    if bmiValue < 18.5 {
        bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.9158632159, green: 0.5869783759, blue: 0.1256086528, alpha: 1))
            
    }else if bmiValue < 24.9 {
        bmi = BMI(value: bmiValue, advice: "Healthy AF!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9408707619, green: 0.2824750543, blue: 0.1996454298, alpha: 1))
        
    }
    
    }

}
