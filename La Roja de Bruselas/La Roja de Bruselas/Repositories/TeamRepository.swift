//
//  TeamRepository.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 6/29/21.
//

import Firebase
import FirebaseFirestoreSwift
import Combine

final class TeamRepository: ObservableObject {
    
    @Published var teams: [Team] = []
    
    private let path: String = "teams"
    
    private let store = Firestore.firestore()
    
    init() {
        get()
    }
    
    func get() {
        store.collection(path).getDocuments(source: .default, completion: { snapshot, error in
            if error == nil {
                self.teams = snapshot?.documents.compactMap { document in
                    try? document.data(as: Team.self)
                } ?? []
            }
        })
    }
    
}
