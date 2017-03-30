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
//
//    var activityLevelLabel = UILabel()
//    var superActiveLabel = UILabel()
//    var activeLabel = UILabel()
//    var moderateLabel = UILabel()
//    var lightLabel = UILabel()
//    var basicLabel = UILabel()
//    var superActiveButton = UIButton()
//    var activeButton = UIButton()
//    var moderateButton = UIButton()
//    var lightButton = UIButton()
//    var basicButton = UIButton()
//    
//    var goalLabel = UILabel()
//    var loseButton = UIButton()
//    var maintainButton = UIButton()
//    var gainButton = UIButton()
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
//        superActiveButton.backgroundColor = whiteColor
//        activeButton.backgroundColor = whiteColor
//        moderateButton.backgroundColor = whiteColor
//        lightButton.backgroundColor = whiteColor
//        basicButton.backgroundColor = whiteColor
//        loseButton.backgroundColor = whiteColor
//        maintainButton.backgroundColor = whiteColor
//        gainButton.backgroundColor = whiteColor
//        caloriesOutputLabel.backgroundColor = whiteColor
//        
        maleButton.setImage(#imageLiteral(resourceName: "maleIcon"), for: .normal)
        femaleButton.setImage(#imageLiteral(resourceName: "femaleIcon"), for: .normal)
//        superActiveButton.setImage(#imageLiteral(resourceName: "superActive"), for: .normal)
//        activeButton.setImage(#imageLiteral(resourceName: "active"), for: .normal)
//        moderateButton.setImage(#imageLiteral(resourceName: "moderate"), for: .normal)
//        lightButton.setImage(#imageLiteral(resourceName: "light"), for: .normal)
//        basicButton.setImage(#imageLiteral(resourceName: "basic"), for: .normal)
        
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
        
//        activityLevelLabel.text = "Activity Level"
//        activityLevelLabel.textColor = blackColor
//        activityLevelLabel.font = largeFont
//        superActiveLabel.text = "Super"
//        superActiveLabel.textColor = blackColor
//        superActiveLabel.font = tinyFont
//        activeLabel.text = "Active"
//        activeLabel.textColor = blackColor
//        activeLabel.font = tinyFont
//        moderateLabel.text = "Moderate"
//        moderateLabel.textColor = blackColor
//        moderateLabel.font = tinyFont
//        lightLabel.text = "Light"
//        lightLabel.textColor = blackColor
//        lightLabel.font = tinyFont
//        basicLabel.text = "Basic"
//        basicLabel.textColor = blackColor
//        basicLabel.font = tinyFont
//        goalLabel.text = "Goal"
//        goalLabel.textColor = blackColor
//        goalLabel.font = largeFont
//        loseButton.setTitle("Lose", for: .normal)
//        loseButton.titleLabel?.textColor = blackColor
//        loseButton.titleLabel?.font = mediumFont
//        maintainButton.setTitle("Maintain", for: .normal)
//        maintainButton.titleLabel?.textColor = blackColor
//        maintainButton.titleLabel?.font = mediumFont
//        gainButton.setTitle("Gain", for: .normal)
//        gainButton.titleLabel?.textColor = blackColor
//        gainButton.titleLabel?.font = mediumFont
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
        
        
        

//        self.view.addSubview(activityLevelLabel)
//        self.view.addSubview(superActiveLabel)
//        self.view.addSubview(superActiveButton)
//        self.view.addSubview(activeLabel)
//        self.view.addSubview(activeButton)
//        self.view.addSubview(moderateLabel)
//        self.view.addSubview(moderateButton)
//        self.view.addSubview(lightLabel)
//        self.view.addSubview(lightButton)
//        self.view.addSubview(basicLabel)
//        self.view.addSubview(basicButton)
//        self.view.addSubview(goalLabel)
//        self.view.addSubview(loseButton)
//        self.view.addSubview(maintainButton)
//        self.view.addSubview(gainButton)
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
        
//        activityLevelLabel.translatesAutoresizingMaskIntoConstraints = false
//        superActiveLabel.translatesAutoresizingMaskIntoConstraints = false
//        activeLabel.translatesAutoresizingMaskIntoConstraints = false
//        moderateLabel.translatesAutoresizingMaskIntoConstraints = false
//        lightLabel.translatesAutoresizingMaskIntoConstraints = false
//        basicLabel.translatesAutoresizingMaskIntoConstraints = false
//        superActiveButton.translatesAutoresizingMaskIntoConstraints = false
//        activeButton.translatesAutoresizingMaskIntoConstraints = false
//        moderateButton.translatesAutoresizingMaskIntoConstraints = false
//        lightButton.translatesAutoresizingMaskIntoConstraints = false
//        basicButton.translatesAutoresizingMaskIntoConstraints = false
//        goalLabel.translatesAutoresizingMaskIntoConstraints = false
//        loseButton.translatesAutoresizingMaskIntoConstraints = false
//        maintainButton.translatesAutoresizingMaskIntoConstraints = false
//        gainButton.translatesAutoresizingMaskIntoConstraints = false
//        caloriesLabel.translatesAutoresizingMaskIntoConstraints = false
//        caloriesOutputLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //gender constrains
        let genderLabelConstraints = [
            genderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            genderLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 24),
            genderLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            genderLabel.heightAnchor.constraint(equalToConstant: 36)
      ]
        
        
        
        let genderButtonsConstraints = [
            
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
            agePicker.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 16),
            
            weightLabel.widthAnchor.constraint(equalTo: weightPicker.widthAnchor),
            weightLabel.heightAnchor.constraint(equalToConstant: 20),
            weightLabel.topAnchor.constraint(equalTo: userPropertiesStackView.topAnchor),
            weightPicker.heightAnchor.constraint(equalToConstant: 30),
            weightPicker.topAnchor.constraint(equalTo: weightLabel.bottomAnchor, constant: 16),
            
            heightLabel.widthAnchor.constraint(equalTo: HeightPicker.widthAnchor),
            heightLabel.heightAnchor.constraint(equalToConstant: 20),
            heightLabel.topAnchor.constraint(equalTo: userPropertiesStackView.topAnchor),
            HeightPicker.heightAnchor.constraint(equalToConstant: 30),
            HeightPicker.topAnchor.constraint(equalTo: heightLabel.bottomAnchor, constant: 16)
            
        
        ]
        
        self.view.addConstraints(genderLabelConstraints)
        self.view.addConstraints(genderButtonsConstraints)
        self.view.addConstraints(userPropertyConstraints)
    }


}

