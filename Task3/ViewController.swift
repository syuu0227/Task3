//
//  ViewController.swift
//  Task3
//
//  Created by 小川卓馬 on 2020/09/06.
//  Copyright © 2020 小川卓馬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numTextField1: UITextField!
    @IBOutlet weak var numTextField2: UITextField!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var numLabel1: UILabel!
    @IBOutlet weak var numLabel2: UILabel!
    @IBOutlet weak var ansLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numTextField1.keyboardType = .numberPad
        numTextField2.keyboardType = .numberPad
    }
    
    @IBAction func calcButtonTapped(_ sender: Any) {
        var num1 = Int(numTextField1.text!) ?? 0
        var num2 = Int(numTextField2.text!) ?? 0
        
        if switch1.isOn {
            num1 = -num1
        }
        
        if switch2.isOn {
            num2 = -num2
        }
        
        numLabel1.text = String(num1)
        numLabel2.text = String(num2)
        
        ansLabel.text = String(num1 + num2)
        
    }
    
}

