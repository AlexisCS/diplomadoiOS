//
//  ViewController.swift
//  proyectOne
//
//  Created by Alexis Celestino Solís on 11/08/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultApp: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var Scissors: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initState()
    }
    
    
    func initState() {
        resultApp.text = "🤖"
        rock.isHidden = false
        paper.isHidden = false
        paper.isEnabled = true
        paper.setTitle("✋", for: [])
        Scissors.isHidden = false
        message.text = GameState.start.message
        playAgain.isHidden = true
    }
    
    func disableElection() {
        rock.isHidden = true
        Scissors.isHidden = true
        paper.isEnabled = false
    }
    
    func randomSign() -> Sign {
        let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
        let sign = randomChoice.nextInt()
        if sign == 0 {
            return .rock
        } else if sign == 1 {
            return .paper
        } else {
            return .scissors
        }
    }
    
    func result (electionUser: Sign, electionApp: Sign) -> String {
        if electionUser == electionApp {
            return GameState.draw.message
        } else if (electionUser == .rock && electionApp == .scissors) || (electionUser == .paper && electionApp == .rock) || (electionUser == .scissors && electionApp == .paper){
            return GameState.victory.message
        } else {
            return GameState.lose.message
        }
    }
    
    
    @IBAction func userSelect(_ sender: UIButton) {
        let electionApp = randomSign()
        switch sender.titleLabel?.text {
        case "👊":
            resultApp.text = electionApp.emoji
            message.text = result(electionUser: .rock, electionApp: electionApp)
            paper.setTitle("👊", for: [])
        case "✋":
            resultApp.text = electionApp.emoji
            message.text = result(electionUser: .paper, electionApp: electionApp)
            paper.setTitle("✋", for: [])
        case "✌️":
            resultApp.text = electionApp.emoji
            message.text = result(electionUser: .scissors, electionApp: electionApp)
            paper.setTitle("✌️", for: [])
        default:
            print("ninguno")
        }
        disableElection()
        playAgain.isHidden = false
    }
    
    @IBAction func reset(_ sender: UIButton) {
        initState()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

