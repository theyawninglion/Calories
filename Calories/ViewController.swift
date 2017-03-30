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
//
//    var caloriesLabel = UILabel()
//    var caloriesOutputLabel = UILabel()
//    
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
//        caloriesOutputLabel.backgroundColor = whiteColor
        
        maleButton.setImage(#imageLiteral(resourceName: "maleIcon"), for: .normal)
        femaleButton.setImage(#imageLiteral(resourceName: "femaleIcon"), for: .normal)
        superActiveButton.setImage(#imageLiteral(resourceName: "superActive"), for: .normal)
        activeButton.setImage(#imageLiteral(resourceName: "active"), for: .normal)
        moderateButton.setImage(#imageLiteral(resourceName: "moderate"), for: .normal)
        lightButton.setImage(#imageLiteral(resourceName: "light"), for: .normal)
        basicButton.setImage(#imageLiteral(resourceName: "basic"), for: .normal)
        
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
//        caloriesLabel.text = "Calories Needed"
//        caloriesLabel.textColor = blackColor
//        caloriesLabel.font = largeFont
//        caloriesOutputLabel.textColor = blackColor
//        caloriesOutputLabel.font = smallFont
        
        // stack view layout
        
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

        HeightStackView.axis = .vertical
        HeightStackView.alignment = .fill
        HeightStackView.distribution = .fillProportionally
        HeightStackView.spacing = 16.0
        
        
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
        //add subviews 
        
        
        self.view.addSubview(genderLabel)
        
        self.view.addSubview(genderStackView)
        genderStackView.addArrangedSubview(maleButton)
        genderStackView.addArrangedSubview(femaleButton)
        
        self.view.addSubview(userPropertiesStackView)
        
        userPropertiesStackView.addArrangedSubview(ageStackView)
        userPropertiesStackView.addArrangedSubview(weightStackView)
        userPropertiesStackView.addArrangedSubview(HeightStackView)
        
        ageStackView.addArrangedSubview(ageLabel)
        ageStackView.addArrangedSubview(agePicker)
        weightStackView.addArrangedSubview(weightLabel)
        weightStackView.addArrangedSubview(weightPicker)
        HeightStackView.addArrangedSubview(heightLabel)
        HeightStackView.addArrangedSubview(HeightPicker)

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

//        self.view.addSubview(caloriesLabel)
//        self.view.addSubview(caloriesOutputLabel)
        
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
        HeightStackView.translatesAutoresizingMaskIntoConstraints = false
        
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        agePicker.translatesAutoresizingMaskIntoConstraints = false
        weightLabel.translatesAutoresizingMaskIntoConstraints = false
        weightPicker.translatesAutoresizingMaskIntoConstraints = false
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        HeightPicker.translatesAutoresizingMaskIntoConstraints = false
        
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
//        caloriesLabel.translatesAutoresizingMaskIntoConstraints = false
//        caloriesOutputLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        //MARK: - constraints
        
        let genderConstraints = [
            
            genderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            genderLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 24),
            genderLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            genderLabel.heightAnchor.constraint(equalToConstant: 36),
            
            genderStackView.centerXAnchor.constraint(equalTo: genderLabel.centerXAnchor),
            genderStackView.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 5),
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
            HeightStackView.widthAnchor.constraint(equalTo: weightStackView.widthAnchor),
            HeightStackView.heightAnchor.constraint(equalTo: weightStackView.heightAnchor),

            
            ageLabel.widthAnchor.constraint(equalTo: agePicker.widthAnchor),
            ageLabel.heightAnchor.constraint(equalToConstant: 20),
            ageLabel.topAnchor.constraint(equalTo: userPropertiesStackView.topAnchor),
            agePicker.widthAnchor.constraint(equalTo: weightPicker.widthAnchor),
            agePicker.heightAnchor.constraint(equalToConstant: 30),

            
            weightLabel.widthAnchor.constraint(equalTo: weightPicker.widthAnchor),
            weightLabel.heightAnchor.constraint(equalToConstant: 20),
            weightLabel.topAnchor.constraint(equalTo: userPropertiesStackView.topAnchor),
            weightPicker.heightAnchor.constraint(equalToConstant: 30),

            
            heightLabel.widthAnchor.constraint(equalTo: HeightPicker.widthAnchor),
            heightLabel.heightAnchor.constraint(equalToConstant: 20),
            heightLabel.topAnchor.constraint(equalTo: userPropertiesStackView.topAnchor),
            HeightPicker.heightAnchor.constraint(equalToConstant: 30),

            
        
        ]
        
        let activityLevelConstraints = [
        
            activityLevelLabel.centerXAnchor.constraint(equalTo: userPropertiesStackView.centerXAnchor),
            activityLevelLabel.heightAnchor.constraint(equalToConstant: 36),
            activityLevelLabel.topAnchor.constraint(equalTo: userPropertiesStackView.bottomAnchor, constant: 25),
            activityLevelLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            
            activityLevelStackView.centerXAnchor.constraint(equalTo: activityLevelLabel.centerXAnchor),
            activityLevelStackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95),
            activityLevelStackView.topAnchor.constraint(equalTo: activityLevelLabel.bottomAnchor, constant: 10),
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
            goalStackView.topAnchor.constraint(equalTo: goalLabel.bottomAnchor, constant: 10),
            
            loseButton.widthAnchor.constraint(equalTo: maintainButton.widthAnchor),
            loseButton.heightAnchor.constraint(equalTo: maintainButton.heightAnchor),
            gainButton.widthAnchor.constraint(equalTo: maintainButton.widthAnchor),
            gainButton.heightAnchor.constraint(equalTo: maintainButton.heightAnchor)
            
        
        ]
        
        self.view.addConstraints(genderConstraints)
        self.view.addConstraints(userPropertyConstraints)
        self.view.addConstraints(activityLevelConstraints)
        self.view.addConstraints(goalConstraints)
    }


}

