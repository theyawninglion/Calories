//
//  ExtentionViewController.swift
//  Calories
//
//  Created by Taylor Phillips on 3/30/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//


import UIKit

extension ViewController {
    
    func setupView() {
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector(("dismissKeyBoard")))
        view.addGestureRecognizer(tap)
        
        //MARK: - button actions
        maleButton.addTarget(self, action: #selector(genderButtonTapped(_:)), for: .touchUpInside)
        femaleButton.addTarget(self, action: #selector(genderButtonTapped(_:)), for: .touchUpInside)
        superActiveButton.addTarget(self, action: #selector(activityButtonTapped(_:)), for: .touchUpInside)
        activeButton.addTarget(self, action: #selector(activityButtonTapped(_:)), for: .touchUpInside)
        moderateButton.addTarget(self, action: #selector(activityButtonTapped(_:)), for: .touchUpInside)
        lightButton.addTarget(self, action: #selector(activityButtonTapped(_:)), for: .touchUpInside)
        basicButton.addTarget(self, action: #selector(activityButtonTapped(_:)), for: .touchUpInside)
        loseButton.addTarget(self, action: #selector(goalButtonTapped(_:)), for: .touchUpInside)
        maintainButton.addTarget(self, action: #selector(goalButtonTapped(_:)), for: .touchUpInside)
        gainButton.addTarget(self, action: #selector(goalButtonTapped(_:)), for: .touchUpInside)
        
        maleButton.tag = 0
        femaleButton.tag = 1
        
        superActiveButton.tag = 0
        activeButton.tag = 1
        moderateButton.tag = 2
        lightButton.tag = 3
        basicButton.tag = 4
        
        loseButton.tag = 0
        maintainButton.tag = 1
        gainButton.tag = 2
        
        maleButton.setImage(#imageLiteral(resourceName: "maleIcon"), for: .normal)
        femaleButton.setImage(#imageLiteral(resourceName: "femaleIcon"), for: .normal)
        superActiveButton.setImage(#imageLiteral(resourceName: "superActive"), for: .normal)
        activeButton.setImage(#imageLiteral(resourceName: "active"), for: .normal)
        moderateButton.setImage(#imageLiteral(resourceName: "moderate"), for: .normal)
        lightButton.setImage(#imageLiteral(resourceName: "light"), for: .normal)
        basicButton.setImage(#imageLiteral(resourceName: "basic"), for: .normal)
        
        guard let largeFont: UIFont = UIFont(name: "BebasNeue", size: 36),
            let mediumFont: UIFont = UIFont(name: "BebasNeue", size: 24),
            let smallFont: UIFont = UIFont(name: "BebasNeue", size: 20),
            let tinyFont: UIFont = UIFont(name: "BebasNeue", size: 14)
            else { return }
        
        
        maleButton.backgroundColor = whiteColor
        femaleButton.backgroundColor = whiteColor
        ageTextField.backgroundColor = whiteColor
        weightTextField.backgroundColor = whiteColor
        heightTextField.backgroundColor = whiteColor
        superActiveButton.backgroundColor = whiteColor
        activeButton.backgroundColor = whiteColor
        moderateButton.backgroundColor = whiteColor
        lightButton.backgroundColor = whiteColor
        basicButton.backgroundColor = whiteColor
        loseButton.backgroundColor = whiteColor
        maintainButton.backgroundColor = whiteColor
        gainButton.backgroundColor = whiteColor
        caloriesOutputLabel.backgroundColor = whiteColor
        
        
        
        genderLabel.text = "Gender"
        genderLabel.textColor = blackColor
        genderLabel.font = largeFont
        genderLabel.textAlignment = .center
        
        ageLabel.text = "Age"
        ageLabel.textColor = blackColor
        ageLabel.font = smallFont
        ageLabel.textAlignment = .center
        weightLabel.text = "Weight"
        weightLabel.textColor = blackColor
        weightLabel.font = smallFont
        weightLabel.textAlignment = .center
        heightLabel.text = "Height"
        heightLabel.textColor = blackColor
        heightLabel.font = smallFont
        heightLabel.textAlignment = .center
        
        activityLevelLabel.text = "Activity Level"
        activityLevelLabel.textColor = blackColor
        activityLevelLabel.font = largeFont
        activityLevelLabel.textAlignment = .center
        superActiveLabel.text = "Super"
        superActiveLabel.textColor = blackColor
        superActiveLabel.font = tinyFont
        superActiveLabel.textAlignment = .center
        activeLabel.text = "Active"
        activeLabel.textColor = blackColor
        activeLabel.font = tinyFont
        activeLabel.textAlignment = .center
        moderateLabel.text = "Moderate"
        moderateLabel.textColor = blackColor
        moderateLabel.font = tinyFont
        moderateLabel.textAlignment = .center
        lightLabel.text = "Light"
        lightLabel.textColor = blackColor
        lightLabel.font = tinyFont
        lightLabel.textAlignment = .center
        basicLabel.text = "Basic"
        basicLabel.textColor = blackColor
        basicLabel.font = tinyFont
        basicLabel.textAlignment = .center
        goalLabel.text = "Goal"
        goalLabel.textColor = blackColor
        goalLabel.font = largeFont
        goalLabel.textAlignment = .center
        loseButton.setTitle("Lose", for: .normal)
        loseButton.setTitleColor(blackColor, for: .normal)
        loseButton.titleLabel?.font = mediumFont
        maintainButton.setTitle("Maintain", for: .normal)
        maintainButton.setTitleColor(blackColor, for: .normal)
        maintainButton.titleLabel?.font = mediumFont
        gainButton.setTitle("Gain", for: .normal)
        gainButton.setTitleColor(blackColor, for: .normal)
        gainButton.titleLabel?.font = mediumFont
        caloriesLabel.text = "Calories Needed"
        caloriesLabel.textColor = blackColor
        caloriesLabel.font = largeFont
        caloriesLabel.textAlignment = .center
        caloriesOutputLabel.textColor = blackColor
        caloriesOutputLabel.font = smallFont
        caloriesOutputLabel.textAlignment = .center
        
        ageTextField.font = smallFont
        ageTextField.textColor = blackColor
        ageTextField.textAlignment = .center
        ageTextField.placeholder = "Enter Age"
        ageTextField.resignFirstResponder()
        weightTextField.font = smallFont
        weightTextField.textColor = blackColor
        weightTextField.textAlignment = .center
        weightTextField.placeholder = "in lbs"
        weightTextField.resignFirstResponder()
        heightTextField.font = smallFont
        heightTextField.textColor = blackColor
        heightTextField.textAlignment = .center
        heightTextField.placeholder = "in Inches"
        heightTextField.resignFirstResponder()
        
        ageTextField.keyboardType = .numberPad
        weightTextField.keyboardType = .numberPad
        heightTextField.keyboardType = .numberPad
        
        //MARK: -  StackView layout
        
        genderStackView.axis = .horizontal
        genderStackView.alignment = .fill
        genderStackView.distribution = .fillEqually
        genderStackView.spacing = 22.0
        
        userPropertiesStackView.axis = .horizontal
        userPropertiesStackView.alignment = .fill
        userPropertiesStackView.distribution = .fillEqually
        userPropertiesStackView.spacing = 8.0
        
        ageStackView.axis = .vertical
        ageStackView.alignment = .fill
        ageStackView.distribution = .fillProportionally
        ageStackView.spacing = 16.0
        
        weightStackView.axis = .vertical
        weightStackView.alignment = .fill
        weightStackView.distribution = .fillProportionally
        weightStackView.spacing = 16.0
        
        heightStackView.axis = .vertical
        heightStackView.alignment = .fill
        heightStackView.distribution = .fillProportionally
        heightStackView.spacing = 16.0
        
        
        activityLevelStackView.axis = .horizontal
        activityLevelStackView.alignment = .fill
        activityLevelStackView.distribution = .fillEqually
        activityLevelStackView.spacing = 14
        
        superActiveStackView.axis = .vertical
        superActiveStackView.alignment = .fill
        superActiveStackView.distribution = .fillProportionally
        superActiveStackView.spacing = 1.0
        
        activeStackView.axis = .vertical
        activeStackView.alignment = .fill
        activeStackView.distribution = .fillProportionally
        activeStackView.spacing = 1.0
        
        moderateStackView.axis = .vertical
        moderateStackView.alignment = .fill
        moderateStackView.distribution = .fillProportionally
        moderateStackView.spacing = 1.0
        
        lightStackView.axis = .vertical
        lightStackView.alignment = .fill
        lightStackView.distribution = .fillProportionally
        lightStackView.spacing = 1.0
        
        basicStackView.axis = .vertical
        basicStackView.alignment = .fill
        basicStackView.distribution = .fillProportionally
        basicStackView.spacing = 1.0
        
        goalStackView.axis = .horizontal
        goalStackView.alignment = .fill
        goalStackView.distribution = .fillEqually
        goalStackView.spacing = 8.0
        
        //MARK: - add subviews
        
        self.view.addSubview(genderLabel)
        self.view.addSubview(genderStackView)
        genderStackView.addArrangedSubview(maleButton)
        genderStackView.addArrangedSubview(femaleButton)
        
        self.view.addSubview(userPropertiesStackView)
        userPropertiesStackView.addArrangedSubview(ageStackView)
        userPropertiesStackView.addArrangedSubview(weightStackView)
        userPropertiesStackView.addArrangedSubview(heightStackView)
        
        ageStackView.addArrangedSubview(ageLabel)
        ageStackView.addArrangedSubview(ageTextField)
        weightStackView.addArrangedSubview(weightLabel)
        weightStackView.addArrangedSubview(weightTextField)
        heightStackView.addArrangedSubview(heightLabel)
        heightStackView.addArrangedSubview(heightTextField)
        
        self.view.addSubview(activityLevelLabel)
        self.view.addSubview(activityLevelStackView)
        
        activityLevelStackView.addArrangedSubview(superActiveStackView)
        activityLevelStackView.addArrangedSubview(activeStackView)
        activityLevelStackView.addArrangedSubview(moderateStackView)
        activityLevelStackView.addArrangedSubview(lightStackView)
        activityLevelStackView.addArrangedSubview(basicStackView)
        
        superActiveStackView.addArrangedSubview(superActiveLabel)
        superActiveStackView.addArrangedSubview(superActiveButton)
        
        activeStackView.addArrangedSubview(activeLabel)
        activeStackView.addArrangedSubview(activeButton)
        
        moderateStackView.addArrangedSubview(moderateLabel)
        moderateStackView.addArrangedSubview(moderateButton)
        
        lightStackView.addArrangedSubview(lightLabel)
        lightStackView.addArrangedSubview(lightButton)
        
        basicStackView.addArrangedSubview(basicLabel)
        basicStackView.addArrangedSubview(basicButton)
        
        self.view.addSubview(goalLabel)
        self.view.addSubview(goalStackView)
        
        goalStackView.addArrangedSubview(loseButton)
        goalStackView.addArrangedSubview(maintainButton)
        goalStackView.addArrangedSubview(gainButton)
        
        self.view.addSubview(caloriesLabel)
        self.view.addSubview(caloriesOutputLabel)
        
        self.view.backgroundColor = greyColor
        
    }
    
    func setupConstraints() {
        
        genderLabel.translatesAutoresizingMaskIntoConstraints = false
        maleButton.translatesAutoresizingMaskIntoConstraints = false
        femaleButton.translatesAutoresizingMaskIntoConstraints = false
        genderStackView.translatesAutoresizingMaskIntoConstraints = false
        userPropertiesStackView.translatesAutoresizingMaskIntoConstraints = false
        ageStackView.translatesAutoresizingMaskIntoConstraints = false
        weightStackView.translatesAutoresizingMaskIntoConstraints = false
        heightStackView.translatesAutoresizingMaskIntoConstraints = false
        
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        ageTextField.translatesAutoresizingMaskIntoConstraints = false
        weightLabel.translatesAutoresizingMaskIntoConstraints = false
        weightTextField.translatesAutoresizingMaskIntoConstraints = false
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        heightTextField.translatesAutoresizingMaskIntoConstraints = false
        
        activityLevelLabel.translatesAutoresizingMaskIntoConstraints = false
        activityLevelStackView.translatesAutoresizingMaskIntoConstraints = false
        superActiveLabel.translatesAutoresizingMaskIntoConstraints = false
        superActiveButton.translatesAutoresizingMaskIntoConstraints = false
        superActiveStackView.translatesAutoresizingMaskIntoConstraints = false
        activeLabel.translatesAutoresizingMaskIntoConstraints = false
        activeButton.translatesAutoresizingMaskIntoConstraints = false
        activeStackView.translatesAutoresizingMaskIntoConstraints = false
        moderateLabel.translatesAutoresizingMaskIntoConstraints = false
        moderateButton.translatesAutoresizingMaskIntoConstraints = false
        moderateStackView.translatesAutoresizingMaskIntoConstraints = false
        lightLabel.translatesAutoresizingMaskIntoConstraints = false
        lightButton.translatesAutoresizingMaskIntoConstraints = false
        lightStackView.translatesAutoresizingMaskIntoConstraints = false
        basicLabel.translatesAutoresizingMaskIntoConstraints = false
        basicButton.translatesAutoresizingMaskIntoConstraints = false
        basicStackView.translatesAutoresizingMaskIntoConstraints = false
        
        goalLabel.translatesAutoresizingMaskIntoConstraints = false
        goalStackView.translatesAutoresizingMaskIntoConstraints = false
        loseButton.translatesAutoresizingMaskIntoConstraints = false
        maintainButton.translatesAutoresizingMaskIntoConstraints = false
        gainButton.translatesAutoresizingMaskIntoConstraints = false
        caloriesLabel.translatesAutoresizingMaskIntoConstraints = false
        caloriesOutputLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        //MARK: - constraints
        
        let genderConstraints = [
            
            genderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            genderLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            genderLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            genderLabel.heightAnchor.constraint(equalToConstant: 36),
            
            genderStackView.centerXAnchor.constraint(equalTo: genderLabel.centerXAnchor),
            genderStackView.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 10),
            genderStackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            genderStackView.heightAnchor.constraint(equalToConstant: 95),
            maleButton.widthAnchor.constraint(equalTo: femaleButton.widthAnchor),
            maleButton.heightAnchor.constraint(equalTo: femaleButton.heightAnchor)
        ]
        
        let userPropertyConstraints = [
            
            userPropertiesStackView.centerXAnchor.constraint(equalTo: genderStackView.centerXAnchor),
            userPropertiesStackView.topAnchor.constraint(equalTo: genderStackView.bottomAnchor, constant: 50),
            userPropertiesStackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95),
            userPropertiesStackView.heightAnchor.constraint(equalToConstant: 67),
            
            ageStackView.widthAnchor.constraint(equalTo: weightStackView.widthAnchor),
            ageStackView.heightAnchor.constraint(equalTo: weightStackView.heightAnchor),
            heightStackView.widthAnchor.constraint(equalTo: weightStackView.widthAnchor),
            heightStackView.heightAnchor.constraint(equalTo: weightStackView.heightAnchor),
            
            
            ageLabel.widthAnchor.constraint(equalTo: ageTextField.widthAnchor),
            ageLabel.heightAnchor.constraint(equalToConstant: 20),
            ageLabel.topAnchor.constraint(equalTo: userPropertiesStackView.topAnchor),
            ageTextField.widthAnchor.constraint(equalTo: weightTextField.widthAnchor),
            ageTextField.heightAnchor.constraint(equalToConstant: 30),
            
            
            weightLabel.widthAnchor.constraint(equalTo: weightTextField.widthAnchor),
            weightLabel.heightAnchor.constraint(equalToConstant: 20),
            weightLabel.topAnchor.constraint(equalTo: userPropertiesStackView.topAnchor),
            weightTextField.heightAnchor.constraint(equalToConstant: 30),
            
            
            heightLabel.widthAnchor.constraint(equalTo: heightTextField.widthAnchor),
            heightLabel.heightAnchor.constraint(equalToConstant: 20),
            heightLabel.topAnchor.constraint(equalTo: userPropertiesStackView.topAnchor),
            heightTextField.heightAnchor.constraint(equalToConstant: 30)
        ]
        
        let activityLevelConstraints = [
            
            activityLevelLabel.centerXAnchor.constraint(equalTo: userPropertiesStackView.centerXAnchor),
            activityLevelLabel.heightAnchor.constraint(equalToConstant: 36),
            activityLevelLabel.topAnchor.constraint(equalTo: userPropertiesStackView.bottomAnchor, constant: 25),
            activityLevelLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            
            activityLevelStackView.centerXAnchor.constraint(equalTo: activityLevelLabel.centerXAnchor),
            activityLevelStackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95),
            activityLevelStackView.topAnchor.constraint(equalTo: activityLevelLabel.bottomAnchor, constant: 25),
            activityLevelStackView.heightAnchor.constraint(equalToConstant: 77),
            
            superActiveStackView.widthAnchor.constraint(equalTo: activeStackView.widthAnchor),
            superActiveStackView.heightAnchor.constraint(equalTo: activeStackView.heightAnchor),
            moderateStackView.widthAnchor.constraint(equalTo: activeStackView.widthAnchor),
            moderateStackView.heightAnchor.constraint(equalTo: activeStackView.heightAnchor),
            lightStackView.widthAnchor.constraint(equalTo: moderateStackView.widthAnchor),
            lightStackView.heightAnchor.constraint(equalTo: moderateStackView.heightAnchor),
            basicStackView.widthAnchor.constraint(equalTo: lightStackView.widthAnchor),
            basicStackView.heightAnchor.constraint(equalTo: lightStackView.heightAnchor),
            
            superActiveLabel.widthAnchor.constraint(equalTo: superActiveButton.widthAnchor),
            superActiveLabel.heightAnchor.constraint(equalToConstant: 14),
            superActiveLabel.topAnchor.constraint(equalTo: activityLevelStackView.topAnchor),
            superActiveButton.heightAnchor.constraint(equalToConstant: 57),
            
            activeLabel.widthAnchor.constraint(equalTo: activeButton.widthAnchor),
            activeLabel.heightAnchor.constraint(equalToConstant: 14),
            activeLabel.topAnchor.constraint(equalTo: activityLevelStackView.topAnchor),
            activeButton.heightAnchor.constraint(equalToConstant: 57),
            
            moderateLabel.widthAnchor.constraint(equalTo: moderateButton.widthAnchor),
            moderateLabel.heightAnchor.constraint(equalToConstant: 14),
            moderateLabel.topAnchor.constraint(equalTo: activityLevelStackView.topAnchor),
            moderateButton.heightAnchor.constraint(equalToConstant: 57),
            
            lightLabel.widthAnchor.constraint(equalTo: lightButton.widthAnchor),
            lightLabel.heightAnchor.constraint(equalToConstant: 14),
            lightLabel.topAnchor.constraint(equalTo: activityLevelStackView.topAnchor),
            lightButton.heightAnchor.constraint(equalToConstant: 57),
            
            basicLabel.widthAnchor.constraint(equalTo: basicButton.widthAnchor),
            basicLabel.heightAnchor.constraint(equalToConstant: 14),
            basicLabel.topAnchor.constraint(equalTo: activityLevelStackView.topAnchor),
            basicButton.heightAnchor.constraint(equalToConstant: 57)
        ]
        
        let goalConstraints = [
            
            goalLabel.topAnchor.constraint(equalTo: activityLevelStackView.bottomAnchor, constant: 25),
            goalLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            goalLabel.heightAnchor.constraint(equalToConstant: 36),
            
            goalStackView.centerXAnchor.constraint(equalTo: goalLabel.centerXAnchor),
            goalStackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95),
            goalStackView.heightAnchor.constraint(equalToConstant: 33),
            goalStackView.topAnchor.constraint(equalTo: goalLabel.bottomAnchor, constant: 25),
            
            loseButton.widthAnchor.constraint(equalTo: maintainButton.widthAnchor),
            loseButton.heightAnchor.constraint(equalTo: maintainButton.heightAnchor),
            gainButton.widthAnchor.constraint(equalTo: maintainButton.widthAnchor),
            gainButton.heightAnchor.constraint(equalTo: maintainButton.heightAnchor)
        ]
        
        let outputConstraints = [
            
            caloriesLabel.topAnchor.constraint(equalTo: goalStackView.bottomAnchor, constant: 25),
            caloriesLabel.centerXAnchor.constraint(equalTo: goalStackView.centerXAnchor),
            caloriesLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            caloriesLabel.heightAnchor.constraint(equalToConstant: 36),
            
            caloriesOutputLabel.topAnchor.constraint(equalTo: caloriesLabel.bottomAnchor, constant: 10),
            caloriesOutputLabel.centerXAnchor.constraint(equalTo: caloriesLabel.centerXAnchor),
            caloriesOutputLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95),
            caloriesOutputLabel.heightAnchor.constraint(equalToConstant: 35)
        ]
        
        self.view.addConstraints(genderConstraints)
        self.view.addConstraints(userPropertyConstraints)
        self.view.addConstraints(activityLevelConstraints)
        self.view.addConstraints(goalConstraints)
        self.view.addConstraints(outputConstraints)
    }
    
}
