//
//  Player.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 2/19/21.
//

import Foundation

struct Player: Identifiable, Codable {
    var id = UUID()
    let name: String
    let bio: String
    let number: Int
    let position: String
    let seasonsActive: Int
    let gamesPlayed: Int
    let goalsScored: Int
    let profilePictureUrl: String
    let playerPictureUrl: String
}

struct Team {
    let captain: Player
    let activePlayers: [Player]
    let inactivePlayers: [Player]
}
