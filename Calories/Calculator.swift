//
//  calculator.swift
//  Calories
//
//  Created by Taylor Phillips on 3/27/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import Foundation

class  Calculator {
    
    enum ActivityLevel {
        
        case superActive, active, moderate, light, basic
        
    }
    enum Goal {
        case maintain, gain, loose
    }
    
    let isMale: Bool, age: Int, weight: Int, height: Int
    let activityLevel: ActivityLevel
    let goal: Goal
    
    init(isMale: Bool, age: Int, weight: Int, height: Int, activityLevel: ActivityLevel, goal: Goal) {
        self.isMale = isMale
        self.age = age
        self.weight = weight
        self.height = height
        self.activityLevel = activityLevel
        self.goal = goal
    }
    
    func calculate(_ gender:Bool , _ age: Double, weight: Double, height: Double, _ activityLevel: ActivityLevel, _ goal: Goal) -> Double{
        
        let maleBaseMetabolicRate = 66 + 6.23 * weight + 12.7 * height - 6.8 * age
        let femaleBaseMetabolicRate = 655 + 4.35 * weight + 4.7 * height - 4.7 * age
        
        var BMR: Double
        var activeBMR: Double
        var calorieIntake: Double
        
        if gender == isMale {
            BMR = maleBaseMetabolicRate
        } else {
            BMR = femaleBaseMetabolicRate
        }
        switch activityLevel {
        case ActivityLevel.superActive:
            activeBMR = BMR * 1.9
        case ActivityLevel.light:
            activeBMR = BMR * 1.37
        case ActivityLevel.moderate:
            activeBMR = BMR * 1.55
        case ActivityLevel.active:
            activeBMR = BMR * 1.72
        default:
            activeBMR = BMR * 1.2
        }
        
        switch goal {
        case Goal.loose:
            calorieIntake = activeBMR - 1000
        case Goal.gain:
            calorieIntake = activeBMR + 1000
        default:
            calorieIntake = activeBMR
        }
        
        return calorieIntake
    }
    
    
}
