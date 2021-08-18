//
//  ViewController.swift
//  Prework
//
//  Created by Michael Fang on 8/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var numOfPeople: UITextField!
    @IBOutlet weak var totalPerPerson: UILabel!
    @IBOutlet weak var totalPerPersonValue: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Calculate
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let people = Double(numOfPeople.text!) ?? 0
        
        let defaultTipPercentages = [0.10, 0.15, 0.20]
        
        
        
        let tip = bill * defaultTipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let totalPerPerson = total / people
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalPerPersonValue.text = String(format: "$%.2f", totalPerPerson)
        
    }
    
    
}

