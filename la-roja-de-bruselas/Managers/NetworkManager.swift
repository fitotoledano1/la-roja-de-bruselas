//
//  NetworkManager.swift
//  la-roja-de-bruselas
//
//  Created by Fito Toledano on 2/19/21.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

final class NetworkManager {
    
    private init() {}
    
    static let shared = NetworkManager()
    
    private let db = Firestore.firestore()
    
    func fetchPlayers(completion: @escaping (Result<[Player], LRDBError>) -> Void) {
        
        var players = [Player]()
        players.removeAll(keepingCapacity: true)
        
        db.collection("players").getDocuments(source: .default) { (snapshot, error) in
            if error == nil {
                guard let documents = snapshot?.documents else {
                    completion(.failure(.invalidData))
                    return
                }
                
                for document in documents {
                    guard
                        let name = document.data()["name"] as? String,
                        let bio = document.data()["bio"] as? String,
                        let number = document.data()["number"] as? Int,
                        let position = document.data()["position"] as? String,
                        let seasonsActive = document.data()["seasons_active"] as? Int,
                        let gamesPlayed = document.data()["games_played"] as? Int,
                        let goalsScored = document.data()["goals_scored"] as? Int,
                        let profilePictureUrl = document.data()["profile_picture_url"] as? String,
                        let playerPictureUrl = document.data()["player_picture_url"] as? String
                    else {
                        completion(.failure(.invalidData))
                        return
                    }
                    
                    let player = Player(name: name,
                                        bio: bio,
                                        number: number,
                                        position: position,
                                        seasonsActive: seasonsActive,
                                        gamesPlayed: gamesPlayed,
                                        goalsScored: goalsScored,
                                        profilePictureUrl: profilePictureUrl,
                                        playerPictureUrl: playerPictureUrl)
                    players.append(player)
                }
                completion(.success(players))
            } else {
                completion(.failure(.unableToComplete))
            }
        }
    }
}
