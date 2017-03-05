//
//  ViewController.swift
//  TipC
//
//  Created by Maddina, Balachandra on 3/3/17.
//  Copyright © 2017 Maddina, Balachandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numPeopleField: UITextField!
    @IBOutlet weak var tipAmountField: UITextField!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTipAmountFiledEditBegin(_ sender: Any) {
        tipControl.selectedSegmentIndex = 3
    }
    
    @IBAction func onSplitAmountEditBegin(_ sender: Any) {
        splitControl.selectedSegmentIndex = 3
    }
    
    @IBAction func onBillAmountChanged(_ sender: AnyObject) {
        let tipArr = [0.1, 0.15, 0.2]
        let splitArr = [1, 2, 3]
        let bill = Double(billField.text!) ?? 0
        var tip = Double(tipAmountField.text!) ?? 0
        var split = Double(numPeopleField.text!) ?? 1
        
        if (tipControl.selectedSegmentIndex < 3) {
            let tipPerc = tipArr[tipControl.selectedSegmentIndex]
            tip = bill * tipPerc
        }
        if (splitControl.selectedSegmentIndex < 3) {
            split = Double(splitArr[splitControl.selectedSegmentIndex])
        }
        
        let total = (bill + tip) / split
        
        splitLabel.text = "\(split)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        billLabel.text = String(format: "$%.2f", bill)
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
}

