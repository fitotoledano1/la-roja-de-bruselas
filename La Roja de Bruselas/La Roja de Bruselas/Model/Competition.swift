//
//  Competition.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 6/29/21.
//

import Combine

/// Team View Model
final class Competition: ObservableObject, Identifiable {
    
    private let repository = TeamRepository()
    @Published var team: Team
    
    private var cancellables: Set<AnyCancellable> = []
    
    var id = ""
    
    init(team: Team) {
        self.team = team
        
        $team
            .compactMap{ $0.id }
            .assign(to: \.id, on: self)
            .store(in: &cancellables)
    }
}

