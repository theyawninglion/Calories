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
    var basic = UILabel()
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
    

    
    
//MARK: - view load function
    
    func setupButtons() {
        maleButton.backgroundColor = whiteColor
    }


}

