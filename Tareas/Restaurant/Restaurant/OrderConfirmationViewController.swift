//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Alexis Celestino Solís on 07/09/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {

    @IBOutlet weak var timeRemainingLabel: UILabel!
    var minutes: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeRemainingLabel.text = "Thank you for your order! Your wait time is approximately \(minutes!) minutes."
    }
    
}
