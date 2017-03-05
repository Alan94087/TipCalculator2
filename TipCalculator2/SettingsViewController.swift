//
//  SettingsViewController.swift
//  TipCalculator2
//
//  Created by Alan Hantke on 3/5/17.
//  Copyright © 2017 Alan Hantke. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var friendDefaultText: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did appear")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        let defaults:UserDefaults = UserDefaults.standard
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "TipCalc_tipPercentage")
        
        let friendCount = defaults.integer(forKey: "TipCalc_FriendCount")
        friendDefaultText.text = String(friendCount)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
        
        let defaults:UserDefaults = UserDefaults.standard
        
        defaults.set(tipControl.selectedSegmentIndex, forKey: "TipCalc_tipPercentage")
        let friends = Int(friendDefaultText.text ?? "2")
        defaults.set(friends, forKey: "TipCalc_FriendCount")
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
   
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
