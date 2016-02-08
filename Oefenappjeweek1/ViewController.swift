//
//  ViewController.swift
//  Oefenappjeweek1
//
//  Created by bob on 07/02/16.
//  Copyright © 2016 bob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    var text: String?
    
    // switchCap --> capitalize first letter of each word
    @IBOutlet weak var switchCap: UISwitch!
    
    @IBOutlet weak var outputLabel: UILabel!
    // print(str.uppercaseString)

    var allCaps:Bool = true
    var firstCaps:Bool = true
    
    @IBAction func capAll(sender: AnyObject) {
        print(String(inputField.text!).uppercaseString)
    }
    // switchCap.addTarget(self, action: "switchChanged", forControlEvents: UIControlEvents.ValueChanged)
    
    
    @IBAction func switchValueChanged (sender: UISwitch) {
        allCaps = sender.on
        text = String(inputField.text!)
        
        print(text)
        outputLabel.text = text!.uppercaseString
        
    }
    
    
    // switchAllcaps --> capitalize all letters. if switchCap is on, lowercase the first letters
    @IBOutlet weak var switchAllcaps: UISwitch!
    
    @IBOutlet weak var outputField: UITextField!
    
    
    
//    @IBAction func changeString(sender: UIButton) {
//        print("Entered text: \(inputField.text!)")
//        //if switchCap.on {
//        //    print((String(inputField.text!).uppercaseString))
//        print(allCaps)
//        print(String(inputField.text!).uppercaseString)
//        //outputField.text = String(inputField.text!).uppercaseString
//    }
    
    @IBAction func copyResult(sender: UIButton) {
        UIPasteboard.generalPasteboard().string = String(outputField.text!)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        topLabel.text = "Enter input string"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

