//
//  GameState.swift
//  proyectOne
//
//  Created by Alexis Celestino Solís on 13/08/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import Foundation

enum GameState {
    case start, victory, lose, draw
    var message: String {
        switch self {
        case .start: return "You Turn!"
        case .victory: return "You won!"
        case .lose: return "You lose!"
        case .draw: return "Draw!"
        }
    }
}
