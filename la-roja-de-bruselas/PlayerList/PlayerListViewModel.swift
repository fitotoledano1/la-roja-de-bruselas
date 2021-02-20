//
//  PlayerListViewModel.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 2/19/21.
//

import Foundation

final class PlayerListViewModel: ObservableObject {
    
    @Published var players: [Player] = []
    
    func fetchPlayers() {
        NetworkManager.shared.fetchPlayers { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let players):
                self.players = players
            case .failure(let error):
                print(error.rawValue)
            }
        }
    }
}
