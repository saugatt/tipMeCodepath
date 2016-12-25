//
//  ViewController.swift
//  TipMe
//
//  Created by Mac on 12/24/16.
//  Copyright © 2016 Saugat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var noOfPeopleField: UITextField!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var perPersonLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    private var total:Double = 0
    
    @IBAction func calculateTip(_ sender: Any) {
    
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func perPersonTips(_ sender: Any) {
        let noPeople = Double(noOfPeopleField.text!) ?? 0
        let perPerson = total / noPeople
        perPersonLabel.text = String(format: "$%.2f", perPerson)
        
    }
    
}

