//
//  ViewController.swift
//  calculator
//
//  Created by Alexis Celestino Solís on 18/08/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }
    
    
    @IBAction func getValueButton(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            resultLabel.text = "0"
        case 1:
            resultLabel.text = "1"
        case 2:
            resultLabel.text = "2"
        case 3:
            resultLabel.text = "3"
        case 4:
            resultLabel.text = "4"
        case 5:
            resultLabel.text = "5"
        case 6:
            resultLabel.text = "6"
        case 7:
            resultLabel.text = "7"
        case 8:
            resultLabel.text = "8"
        case 9:
            resultLabel.text = "9"
        case 10:
            resultLabel.text = "AC"
        case 11:
            resultLabel.text = "+/-"
        case 12:
            resultLabel.text = "%"
        case 13:
            resultLabel.text = "÷"
        case 14:
            resultLabel.text = "x"
        case 15:
            resultLabel.text = "-"
        case 16:
            resultLabel.text = "+"
        case 17:
            resultLabel.text = "="
        case 18:
            resultLabel.text = ","
        default:
            resultLabel.text = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

