//
//  ViewController.swift
//  Calories
//
//  Created by Taylor Phillips on 3/27/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    //MARK: - view properties
    
    var genderLabel = UILabel()
    var maleButton = UIButton()
    var femaleButton = UIButton()
    var genderStackView = UIStackView()
    
    
    var ageLabel = UILabel()
    var agePicker = UITextView()
    var ageStackView = UIStackView()
    var weightLabel = UILabel()
    var weightPicker = UITextView()
    var weightStackView = UIStackView()
    var heightLabel = UILabel()
    var HeightPicker = UITextView()
    var HeightStackView = UIStackView()
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
    

    func selectedButton(_ sender: AnyObject) {
        
        guard let button = sender as? UIButton else { return }
        if button.tag == button.tag {
            button.isSelected = true
            UIView.animate(withDuration: 0.3, animations: {
                button.backgroundColor = self.selectedColor
            })
        }
    }
    
    func genderButtonTapped(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) {
            self.femaleButton.backgroundColor = self.whiteColor
            self.maleButton.backgroundColor = self.whiteColor
        }
        self.femaleButton.isSelected = false
        self.maleButton.isSelected = false
        
        selectedButton(sender)
    }
    
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
        
        
        selectedButton(sender)
    }
    
    func goalButtonTapped(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) {
            self.loseButton.backgroundColor = self.whiteColor
            self.maintainButton.backgroundColor = self.whiteColor
            self.gainButton.backgroundColor = self.whiteColor
        }
        self.loseButton.isSelected = false
        self.maintainButton.isSelected = false
        self.gainButton.isSelected = false
        
        selectedButton(sender)

    }
    
}


