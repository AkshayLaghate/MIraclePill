//
//  ViewController.swift
//  MIraclePill
//
//  Created by Akshay Laghate on 30/11/16.
//  Copyright © 2016 INdCODERS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var StatePicker: UIPickerView!
    
    @IBOutlet weak var stateButton: UIButton!
    
    let states = ["MP","MH","UP","AP","DL"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        StatePicker.dataSource = self
        StatePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StateButtonPressed(_ sender: Any) {
        StatePicker.isHidden = false
    }

    
    @IBAction func BuyButtonPressed(_ sender: Any) {
        
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1

    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(states[row], for: UIControlState.normal)
        StatePicker.isHidden = true
    }
}

