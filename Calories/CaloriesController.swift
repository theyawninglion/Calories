//
//  calculator.swift
//  Calories
//
//  Created by Taylor Phillips on 3/27/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import Foundation

class CaloriesController {

    
    static func calculate(calories: Calories) -> Double {
        
        var calorieIntake: Double
        var BMR: Double
        var activeBMR: Double
        
        let maleBaseMetabolicRate =  (66 + (6.23 * calories.weight)) + ((12.7 * calories.height) - (6.8 * calories.age))
        let femaleBaseMetabolicRate = (655 + (4.35 * calories.weight)) +
            ((4.7 * calories.height) - (4.7 * calories.age))
        
        
        switch calories.gender {
        case .male:
            BMR = maleBaseMetabolicRate
        case .female:
            BMR = femaleBaseMetabolicRate
        }
        
        switch calories.activityLevel {
        case .superActive:
            activeBMR = BMR * 1.9
        case .active:
            activeBMR = BMR * 1.72
        case .moderate:
            activeBMR = BMR * 1.55
        case .light:
            activeBMR = BMR * 1.37
        case .basic:
            activeBMR = BMR * 1.2
        }
        
        switch calories.goal {
        case .lose:
            calorieIntake = activeBMR - 1000
        case .maintain:
            calorieIntake = activeBMR
        case .gain:
            calorieIntake = activeBMR + 1000
        }
        return calorieIntake
    }
}
