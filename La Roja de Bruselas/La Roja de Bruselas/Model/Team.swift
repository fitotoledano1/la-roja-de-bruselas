//
//  Team.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 6/29/21.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

enum Position: String, CaseIterable, Codable {
    case goalkeeper = "Goalkeeper"
    case defender = "Defender"
    case midfielder = "Midfielder"
    case striker = "Striker"
}

struct Player: Identifiable, Codable {
    @DocumentID var id: String? = UUID().uuidString
    let name: String
    let number: Int
    let position: Position
    let gamesPlayed: Int
    let goalsScored: Int
    let seasonsPlayed: Int
    let photoUrl: String
    let bio: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case number
        case position
        case gamesPlayed = "games_played"
        case goalsScored = "goals_scored"
        case seasonsPlayed = "seasons_played"
        case photoUrl = "photo_url"
        case bio
    }
}

struct Team: Identifiable, Codable {
    @DocumentID var id: String? = UUID().uuidString
    let name: String
    let captain: Player
    let roster: [Player]
}

final class LockerRoom: ObservableObject {
    @Published var teams: [Team] = []
    
    private let db = Firestore.firestore()
    
    func fetchTeams() {
        db.collection("teams").getDocuments(source: .default) { snapshot, error in
            if error == nil {
                guard let documents = snapshot?.documents else {
                    return
                }
                
                self.teams = documents.compactMap{ (queryDocumentSnapshot) -> Team? in
                    return try? queryDocumentSnapshot.data(as: Team.self)
                }
                
            } else {
                print("Error: \(error?.localizedDescription ?? "Something went wrong.")")
            }
        }
    }
    
    func saveData() {
        let roster = [
            Player(
                id: UUID().uuidString,
                name: "Fito Toledano",
                number: 26,
                position: .defender,
                gamesPlayed: 3,
                goalsScored: 0,
                seasonsPlayed: 2,
                photoUrl: "",
                bio: "28 años. Majadahonda, Madrid. Software Engineer specializing in native iOS Development in Swift."
            ),
            Player(
                id: UUID().uuidString,
                name: "Nico Barra",
                number: 8,
                position: .midfielder,
                gamesPlayed: 39,
                goalsScored: 7,
                seasonsPlayed: 4,
                photoUrl: "",
                bio: "28 años. Alicante. OCDE"
            ),
            Player(
                id: UUID().uuidString,
                name: "Fernan Alguacil",
                number: 31,
                position: .defender,
                gamesPlayed: 50,
                goalsScored: 1,
                seasonsPlayed: 5,
                photoUrl: "",
                bio: "30 años. Granada. Ingeniero Industrial."
            ),
        ]
        
        /// La Roja de Bruselas ID
        /// 4gZYFu1Slz4iOGPiH9Ci
        
        for player in roster {
            do {
                let _ = try? db.collection("teams").document("4gZYFu1Slz4iOGPiH9Ci").collection("roster").addDocument(from: player)
            } catch {
                print(error)
            }
        }
    }
}
