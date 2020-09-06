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
    @IBOutlet weak var answerLabel: UILabel! // 単語は略さない
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numTextField1.keyboardType = .numberPad
        numTextField2.keyboardType = .numberPad
    }
    
    @IBAction func calcButtonTapped(_ sender: Any) {

        let num1 = Int(numTextField1.text!) ?? 0
        let num2 = Int(numTextField2.text!) ?? 0
        
        let signedNum1 = makeSignedNumber(number: num1, isSigned: switch1.isOn)
        let signedNum2 = makeSignedNumber(number: num2, isSigned: switch2.isOn)
        
        numLabel1.text = String(signedNum1)
        numLabel2.text = String(signedNum2)
        
        answerLabel.text = String(signedNum1 + signedNum2)
        
//        var num1 = Int(numTextField1.text!) ?? 0
//        var num2 = Int(numTextField2.text!) ?? 0
//
//        if switch1.isOn {
//            num1 = -num1
//        }
//
//        if switch2.isOn {
//            num2 = -num2
//        }
//        numLabel1.text = String(num1)
//        numLabel2.text = String(num2)
//
//        answerLabel.text = String(num1 + num2)
        
    }
    
    // signed number 符号付き数値
    private func makeSignedNumber(number: Int, isSigned: Bool) -> Int {
        if isSigned {
            return -number
        } else {
            return number
        }
    }
    
}

