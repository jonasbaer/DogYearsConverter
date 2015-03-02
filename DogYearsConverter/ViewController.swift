//
//  ViewController.swift
//  DogYearsConverter
//
//  Created by Jonas Baer on 02.03.15.
//  Copyright (c) 2015 Jonas Baer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var insertHumanYearsTextField: UITextField!
    @IBOutlet weak var showCatYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        // convert input number into int
        //let inputHumanYears = insertHumanYearsTextField.text.toInt()!
        let inputHumanYears = Double((insertHumanYearsTextField.text as NSString).doubleValue)

        // create constant
        let conversionFactorDogToMen = 7.5

        showCatYearsLabel.hidden = false
        showCatYearsLabel.text = "This equals to \(inputHumanYears / conversionFactorDogToMen) years for dogs :)"
        insertHumanYearsTextField.resignFirstResponder()

    }

}

