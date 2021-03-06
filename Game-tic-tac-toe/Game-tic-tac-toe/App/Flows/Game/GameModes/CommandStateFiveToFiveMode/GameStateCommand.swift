//
//  GameStateCommandFiveToFive.swift
//  Game-tic-tac-toe
//
//  Created by Alexander Grigoryev on 25.01.2022.
//

import Foundation

class CommandFiveToFive {
    
    let action: GameAction
    
    init(action: GameAction) {
        self.action = action
    }
    
    var logMessage: String {
        switch action {
        case .playerSetMark(let player, let position):
            return "\(player) placed mark at \(position)"
        case .gameFinished(let winner):
            if let winner = winner {
                return "\(winner) won the game"
            } else {
                return "Game is drawn"
            }
        case .restartGame:
            return "Game restarted"
        }
    }
}
