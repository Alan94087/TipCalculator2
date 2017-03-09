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
    @IBOutlet weak var billLabel: UILabel!
    
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
        // print("main view will appear")
        
        // Get the defaults...
        let defaults:UserDefaults = UserDefaults.standard
        
        // This is going to be a bit ugly and I'm sure there is a better way to do this.  My goal is to handle the
        // first time initialization of the defaults and also the timeout initialization of the bill amount.  To
        // keep things generalized, I'll potentially be setting and then reading the percentage value, which isn't
        // exactly efficient.  Again, probably a better way of doing all this...  I also played around with persisting
        // Integers versus strings.  That needs to be cleaned up too...
        
        var defFriendCount = defaults.integer(forKey: "TipCalc_FriendCount")
        print("Default Friend Count Before: " + String(defFriendCount))
        if(defFriendCount == 0) {
            defFriendCount = 2
            defaults.set(defFriendCount, forKey: "TipCalc_FriendCount")
        }
        
        friendField.text = String(defFriendCount)
        
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "TipCalc_tipPercentage")
         calculateTip(self)
        
    }
    
    @IBAction func enterBillEntryField(_ sender: Any) {
        billField.text = ""
    }
    
    @IBAction func enterfriendField(_ sender: Any) {
        // ease entry by clearing out the field
        friendField.text = ""
        calculateTip(self)
    }
    
    @IBAction func leaveFriendField(_ sender: Any) {
        // This could be done better.  The intent is to ensure that we have a non-zero number by defaulting
        // the value to the default number of friends.  I suspect there is a better way to do this...
        if (friendField.text == "0" || (friendField.text?.isEmpty)!) {
            friendField.text = "2"
        }
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        // Manage the entry, setting the decimal point correctly and displaying the bill amount
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill = (Double(billField.text!) ?? 0) * 0.01
        billLabel.text = String(format: "$%.2f", bill)
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        print("friendField: " + (friendField.text ?? "none"))
        let friendCount = Int(friendField.text!) ?? 2
        // print(friendCount)
        
        // Add $0.01 to each friend to be fair and to not short change the vendor
        let friendValue = Double(((total / Double(friendCount)) + 0.01))
        
        // Update the pertinent text boxes
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        friendSplitLabel.text = String(format: "$%.2f", friendValue)
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

}

