//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sivam Agarwalla on 8/13/20.
//  Copyright © 2020 Sivam Agarwalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalPeopleSlider: UISlider!
    
    @IBOutlet weak var numOfPeople: UILabel!
    @IBOutlet weak var totForPeople: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTop(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTIp(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let numPeople = Int(totalPeopleSlider.value)
        numOfPeople.text = "\(numPeople) People"
        let perPersonTot = total / Double(numPeople)
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totForPeople.text = String(format: "$%.2f", perPersonTot)
    }
    
}

