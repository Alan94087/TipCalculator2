//
//  SettingsViewController.swift
//  TipCalculator2
//
//  Created by Alan Hantke on 3/5/17.
//  Copyright © 2017 Alan Hantke. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    // NOTE:
    //    I noticed that I wasn't very consistent with my naming conventions.  Events should be consistently named,
    //    and ditto for labels, fields, etc...  Because of XCode's 'helper' tools, I am not 100% sure how to rename
    //    these though.  I need to look into that.  :-)
    
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
    
    @IBAction func onEnterDefaultFriendField(_ sender: Any) {
        // ease entry by clearing out the field
        friendDefaultText.text = ""
    }
    
    @IBAction func onExitDefaultFriendField(_ sender: Any) {
        // This could be done better.  The intent is to ensure that we have a non-zero number by defaulting
        // the value to the default number of friends.  I suspect there is a better way to do this...
        if (friendDefaultText.text == "0" || (friendDefaultText.text?.isEmpty)!) {
            friendDefaultText.text = "2"
        }
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
