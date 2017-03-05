//
//  ViewController.swift
//  TipCalculator2
//
//  Created by Alan Hantke on 3/5/17.
//  Copyright © 2017 Alan Hantke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /*
        General Flaws:
           1. Should add input logic to not allow negatives
 
    */

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var friendField: UITextField!
    @IBOutlet weak var friendSplitLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("main view will appear")
        
        let defaults:UserDefaults = UserDefaults.standard
        let defFriendCount = defaults.integer(forKey: "TipCalc_FriendCount")
        friendField.text = String(defFriendCount)
        print("Default Friend Count: " + String(defFriendCount))
        calculateTip(self)
        
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        print("friendField: " + (friendField.text ?? "none"))
        let friendCount = Int(friendField.text!) ?? 2
        print(friendCount)
        // Add $0.01 to each friend to be fair and to not short change the vendor
        let friendValue = Double(((total / Double(friendCount)) + 0.01))
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        friendSplitLabel.text = String(format: "$%.2f", friendValue)
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

}

