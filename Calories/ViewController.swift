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
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }

//MARK: - view properties
    
    var genderLabel = UILabel()
    var maleButton = UIButton()
    var femaleButton = UIButton()
    
    
    var ageLabel = UILabel()
    var weightLabel = UILabel()
    var heightLabel = UILabel()
    var agePicker = UIPickerView()
    var weightPicker = UIPickerView()
    var HeightPicker = UIPickerView()
    
    var activityLevelLabel = UILabel()
    var superActiveLabel = UILabel()
    var activeLabel = UILabel()
    var moderateLabel = UILabel()
    var lightLabel = UILabel()
    var basicLabel = UILabel()
    var superActiveButton = UIButton()
    var activeButton = UIButton()
    var moderateButton = UIButton()
    var lightButton = UIButton()
    var basicButton = UIButton()
    
    var goalLabel = UILabel()
    var loseButton = UIButton()
    var maintainButton = UIButton()
    var gainButton = UIButton()
    
    var caloriesLabel = UILabel()
    var caloriesOutputLabel = UILabel()
    
    var whiteColor: UIColor = UIColor(red:0.95, green:0.98, blue:1.00, alpha:1.0)
    var greyColor: UIColor =  UIColor(red:0.82, green:0.84, blue:0.85, alpha:1.0)
    var blackColor: UIColor = UIColor(red:0.09, green:0.09, blue:0.10, alpha:1.0)
    var selectedColor: UIColor = UIColor(red:0.65, green:0.72, blue:0.76, alpha:1.0)

    
    
//MARK: - view load function
    
    func setupView() {
        
        guard let largeFont: UIFont = UIFont(name: "BebasNeue", size: 36),
            let mediumFont: UIFont = UIFont(name: "BebasNeue", size: 24),
            let smallFont: UIFont = UIFont(name: "BebasNeue", size: 20),
            let tinyFont: UIFont = UIFont(name: "BebasNeue", size: 14)
            else { return }
        
        
        
        maleButton.backgroundColor = whiteColor
        femaleButton.backgroundColor = whiteColor
        agePicker.backgroundColor = whiteColor
        weightPicker.backgroundColor = whiteColor
        HeightPicker.backgroundColor = whiteColor
        superActiveButton.backgroundColor = whiteColor
        activeButton.backgroundColor = whiteColor
        moderateButton.backgroundColor = whiteColor
        lightButton.backgroundColor = whiteColor
        basicButton.backgroundColor = whiteColor
        loseButton.backgroundColor = whiteColor
        maintainButton.backgroundColor = whiteColor
        gainButton.backgroundColor = whiteColor
        caloriesOutputLabel.backgroundColor = whiteColor
        
        maleButton.setImage(#imageLiteral(resourceName: "maleIcon"), for: .normal)
        femaleButton.setImage(#imageLiteral(resourceName: "femaleIcon"), for: .normal)
        superActiveButton.setImage(#imageLiteral(resourceName: "superActive"), for: .normal)
        activeButton.setImage(#imageLiteral(resourceName: "active"), for: .normal)
        moderateButton.setImage(#imageLiteral(resourceName: "moderate"), for: .normal)
        lightButton.setImage(#imageLiteral(resourceName: "light"), for: .normal)
        basicButton.setImage(#imageLiteral(resourceName: "basic"), for: .normal)
        
        genderLabel.text = "Gender"
        genderLabel.textColor = blackColor
        ageLabel.text = "Age"
        ageLabel.textColor = blackColor
        ageLabel.font = smallFont
        weightLabel.text = "Weight"
        weightLabel.textColor = blackColor
        weightLabel.font = smallFont
        activityLevelLabel.text = "Activity Level"
        activityLevelLabel.textColor = blackColor
        activityLevelLabel.font = largeFont
        superActiveLabel.text = "Super"
        superActiveLabel.textColor = blackColor
        superActiveLabel.font = tinyFont
        activeLabel.text = "Active"
        activeLabel.textColor = blackColor
        activeLabel.font = tinyFont
        moderateLabel.text = "Moderate"
        moderateLabel.textColor = blackColor
        moderateLabel.font = tinyFont
        lightLabel.text = "Light"
        lightLabel.textColor = blackColor
        lightLabel.font = tinyFont
        basicLabel.text = "Basic"
        basicLabel.textColor = blackColor
        basicLabel.font = tinyFont
        goalLabel.text = "Goal"
        goalLabel.textColor = blackColor
        goalLabel.font = largeFont
        loseButton.setTitle("Lose", for: .normal)
        loseButton.titleLabel?.textColor = blackColor
        loseButton.titleLabel?.font = mediumFont
        maintainButton.setTitle("Maintain", for: .normal)
        maintainButton.titleLabel?.textColor = blackColor
        maintainButton.titleLabel?.font = mediumFont
        gainButton.setTitle("Gain", for: .normal)
        gainButton.titleLabel?.textColor = blackColor
        gainButton.titleLabel?.font = mediumFont
        caloriesLabel.text = "Calories Needed"
        caloriesLabel.textColor = blackColor
        caloriesLabel.font = largeFont
        caloriesOutputLabel.textColor = blackColor
        caloriesOutputLabel.font = smallFont
        
        //add subviews 
        
        self.view.addSubview(genderLabel)
        self.view.addSubview(maleButton)
        self.view.addSubview(femaleButton)
        self.view.addSubview(ageLabel)
        self.view.addSubview(agePicker)
        self.view.addSubview(weightLabel)
        self.view.addSubview(weightPicker)
        self.view.addSubview(heightLabel)
        self.view.addSubview(HeightPicker)
        self.view.addSubview(activityLevelLabel)
        self.view.addSubview(superActiveLabel)
        self.view.addSubview(superActiveButton)
        self.view.addSubview(activeLabel)
        self.view.addSubview(activeButton)
        self.view.addSubview(moderateLabel)
        self.view.addSubview(moderateButton)
        self.view.addSubview(lightLabel)
        self.view.addSubview(lightButton)
        self.view.addSubview(basicLabel)
        self.view.addSubview(basicButton)
        self.view.addSubview(goalLabel)
        self.view.addSubview(loseButton)
        self.view.addSubview(maintainButton)
        self.view.addSubview(gainButton)
        self.view.addSubview(caloriesLabel)
        self.view.addSubview(caloriesOutputLabel)
        self.view.backgroundColor = greyColor
        
    }
    


}

