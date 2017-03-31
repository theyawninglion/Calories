//
//  Calories.swift
//  Calories
//
//  Created by Taylor Phillips on 3/30/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import Foundation

class  Calories {
    
    enum ActivityLevel {
        
        case superActive, active, moderate, light, basic
    }
    enum Goal {
        
        case lose, maintain, gain
    }
    enum Gender {
        case male, female
    }
    
    let age: Double, weight: Double, height: Double
    let activityLevel: ActivityLevel
    let goal: Goal
    let gender: Gender
    
    init(gender: Gender, age: Double, weight: Double, height: Double, activityLevel: ActivityLevel, goal: Goal) {
        self.gender = gender
        self.age = age
        self.weight = weight
        self.height = height
        self.activityLevel = activityLevel
        self.goal = goal
    }
}
