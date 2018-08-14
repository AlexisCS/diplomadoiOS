//
//  Sign.swift
//  proyectOne
//
//  Created by Alexis Celestino Solís on 13/08/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import Foundation

enum Sign {
    case rock, paper, scissors
    var emoji : String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
}



