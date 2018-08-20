//
//  ViewController.swift
//  Componentes
//
//  Created by Alexis Celestino Solís on 18/08/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func respondToTap(_ sender: UITapGestureRecognizer) {
        let  location = sender.location(in: view)
        print(location)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

