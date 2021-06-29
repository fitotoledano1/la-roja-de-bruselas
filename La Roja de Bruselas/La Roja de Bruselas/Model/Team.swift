//
//  Team.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 6/29/21.
//

import Foundation
import SwiftUI

enum Position: String, CaseIterable, Codable {
    case goalkeeper = "Goalkeeper"
    case defender = "Defender"
    case midfielder = "Midfielder"
    case striker = "Striker"
}

struct Player: Identifiable, Codable {
    let id: String
    let name: String
    let position: String
    let goalsScored: Int
    let seasonsPlayed: Int
    
    enum CodingKey: String, CodingKeys {
        case id
        case name
        case position
        case goalsScored = "goals_scored"
        case seasonsPlayed = "seasons_played"
    }
}
