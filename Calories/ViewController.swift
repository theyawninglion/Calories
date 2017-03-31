//
//  ViewController.swift
//  Calories
//
//  Created by Taylor Phillips on 3/27/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupConstraints()
        
        
    }
    func dismissKeyBoard() {
        view.endEditing(true)
    }
    //MARK: - properties
    
    var genderLabel = UILabel()
    var maleButton = UIButton()
    var femaleButton = UIButton()
    var genderStackView = UIStackView()
    
    
    var ageLabel = UILabel()
    var ageTextField = UITextField()
    var ageStackView = UIStackView()
    var weightLabel = UILabel()
    var weightTextField = UITextField()
    var weightStackView = UIStackView()
    var heightLabel = UILabel()
    var heightTextField = UITextField()
    var heightStackView = UIStackView()
    var userPropertiesStackView = UIStackView()
    
    var activityLevelLabel = UILabel()
    var superActiveLabel = UILabel()
    var superActiveButton = UIButton()
    var superActiveStackView = UIStackView()
    
    var activityLevelStackView = UIStackView()
    var activeLabel = UILabel()
    var activeButton = UIButton()
    var activeStackView = UIStackView()
    var moderateLabel = UILabel()
    var moderateButton = UIButton()
    var moderateStackView = UIStackView()
    var lightLabel = UILabel()
    var lightButton = UIButton()
    var lightStackView = UIStackView()
    var basicLabel = UILabel()
    var basicButton = UIButton()
    var basicStackView = UIStackView()
    
    var goalLabel = UILabel()
    var loseButton = UIButton()
    var maintainButton = UIButton()
    var gainButton = UIButton()
    var goalStackView = UIStackView()
    
    var caloriesLabel = UILabel()
    var caloriesOutputLabel = UILabel()
    
    var whiteColor: UIColor = UIColor(red:0.95, green:0.98, blue:1.00, alpha:1.0)
    var greyColor: UIColor =  UIColor(red:0.82, green:0.84, blue:0.85, alpha:1.0)
    var blackColor: UIColor = UIColor(red:0.09, green:0.09, blue:0.10, alpha:1.0)
    var selectedColor: UIColor = UIColor(red:0.65, green:0.72, blue:0.76, alpha:1.0)
    
    
    
    
    //MARK: - Button Functions
    func selectedButton(_ sender: AnyObject) {
        
        guard let button = sender as? UIButton else { return }
        if button.tag == button.tag {
            button.isSelected = true
            UIView.animate(withDuration: 0.3, animations: {
                button.backgroundColor = self.selectedColor
            })
            runCalculation()
        }
    }
    
    var gender: Calories.Gender?
    
    func genderButtonTapped(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) {
            self.femaleButton.backgroundColor = self.whiteColor
            self.maleButton.backgroundColor = self.whiteColor
        }
        self.femaleButton.isSelected = false
        self.maleButton.isSelected = false
        
        switch sender.tag {
        case 0:
            gender = Calories.Gender.male
        default:
            gender = Calories.Gender.female
            
        }
        selectedButton(sender)
        
    }
    var activityLevel: Calories.ActivityLevel?
    
    func activityButtonTapped(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) {
            self.superActiveButton.backgroundColor = self.whiteColor
            self.activeButton.backgroundColor = self.whiteColor
            self.moderateButton.backgroundColor = self.whiteColor
            self.lightButton.backgroundColor = self.whiteColor
            self.basicButton.backgroundColor = self.whiteColor
        }
        self.superActiveButton.isSelected = false
        self.activeButton.isSelected = false
        self.moderateButton.isSelected = false
        self.lightButton.isSelected = false
        self.basicButton.isSelected = false
        
        
        switch sender.tag {
        case 0:
            activityLevel = Calories.ActivityLevel.superActive
        case 1:
            activityLevel = Calories.ActivityLevel.active
        case 2:
            activityLevel = Calories.ActivityLevel.moderate
        case 3:
            activityLevel = Calories.ActivityLevel.light
        default:
            activityLevel = Calories.ActivityLevel.basic
        }
        selectedButton(sender)
        
    }
    var goal: Calories.Goal?
    
    func goalButtonTapped(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) {
            self.loseButton.backgroundColor = self.whiteColor
            self.maintainButton.backgroundColor = self.whiteColor
            self.gainButton.backgroundColor = self.whiteColor
        }
        self.loseButton.isSelected = false
        self.maintainButton.isSelected = false
        self.gainButton.isSelected = false
        
        
        switch sender.tag {
        case 0:
            goal = Calories.Goal.lose
        case 1:
            goal = Calories.Goal.maintain
        default:
            goal = Calories.Goal.gain
        }
        
        selectedButton(sender)
        
    }
    
    func runCalculation() {
        guard let age = Double(ageTextField.text!), let weight = Double(weightTextField.text!), let height = Double(heightTextField.text!), let gender = gender, let activityLevel = activityLevel, let goal = goal else { return }
        let calories = Calories(gender: gender, age: age, weight: weight, height: height, activityLevel: activityLevel, goal: goal)
        let outPut = CaloriesController.calculate(calories: calories)
        
        caloriesOutputLabel.text = "\(outPut)"
        
    }
    
}


