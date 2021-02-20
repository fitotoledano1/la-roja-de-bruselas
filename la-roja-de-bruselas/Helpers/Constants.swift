//
//  MockData.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 2/19/21.
//

import Foundation

/// Position: 1 goalkeeper, 2-4 defender, 7 9 11 striker, 5-10 midfielder
enum Position: String {
    case p1 = "Goalkeeper"
    case p2 = "Lateral Derecho"
    case p3 = "Lateral Izquierdo"
    case p4 = "Defensa Central"
    case p5 = "Mediocentro Defensivo"
    case p6 = "Centrocampista"
    case p7 = "Extremo Izquierdo"
    case p8, p10 = "Mediocentro Ofensivo"
    case p9 = "Delantero Centro"
    case p11 = "Extremo Derecho"
}

struct MockData {
    static let player1 = Player(name: "Fito Toledano",
                                bio: "Madrileño. 28 años. Software Engineer previously @apple @peepteam.",
                                number: 26,
                                position: "Lateral Izquierdo",
                                seasonsActive: 1,
                                gamesPlayed: 3,
                                goalsScored: 0,
                                profilePictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b",
                                playerPictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b")
    
    static let player2 = Player(name: "Fernan Alguacil",
                                bio: "Natural de Granada. 29 años. Ingeniero Industrial especializado en automoción.",
                                number: 3,
                                position: "Lateral Derecho",
                                seasonsActive: 4,
                                gamesPlayed: 120,
                                goalsScored: 3,
                                profilePictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b",
                                playerPictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b")
    
    static let player3 = Player(name: "Stefan Friedrichs",
                                bio: "Chileno. Padre. Amante del fútbol primero, y en sus ratos libres: Diseñador.",
                                number: 2,
                                position: "Mediocentro Defensivo",
                                seasonsActive: 1,
                                gamesPlayed: 4,
                                goalsScored: 1,
                                profilePictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b",
                                playerPictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b")
    
    static let player4 = Player(name: "Bruno Rinaldi",
                                bio: "Uruguayo. Sólo meto goles si Idafe me grita.",
                                number: 9,
                                position: "Delantero Centro",
                                seasonsActive: 4,
                                gamesPlayed: 59,
                                goalsScored: 200,
                                profilePictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b",
                                playerPictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b")
    
    static let player5 = Player(name: "Nicolás Barragán",
                                bio: "Valenciano. MVP. The legend himself.",
                                number: 10,
                                position: "Mediocentro Ofensivo",
                                seasonsActive: 4,
                                gamesPlayed: 59,
                                goalsScored: 200,
                                profilePictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b",
                                playerPictureUrl: "https://firebasestorage.googleapis.com/v0/b/la-roja-de-bruselas.appspot.com/o/profile_pictures%2Ffitotoledano.jpg?alt=media&token=768d6ff3-b22a-47e6-a474-2bd9c373680b")
    
    static let players = [player1, player2, player3, player4, player5]
}

