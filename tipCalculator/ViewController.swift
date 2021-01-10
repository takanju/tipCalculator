//
//  ViewController.swift
//  tipCalculator
//
//  Created by Anjali Tak on 8/20/20.
//  Copyright © 2020 Anjali Tak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billFieldText: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipController: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func TapFunc(_ sender: Any) {
        print("Hey")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
    //entering bill amount
        let bill = Double(billFieldText.text!) ?? 0
        //calculating tip and total
        let tipPercentages = [0.10, 0.12, 0.15]
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
        let total = bill + tip
        //update the tip and total
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

