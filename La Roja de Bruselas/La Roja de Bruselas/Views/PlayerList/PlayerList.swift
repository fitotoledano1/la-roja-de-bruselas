//
//  PlayerList.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 6/29/21.
//

import SwiftUI

struct PlayerList: View {
    
    @StateObject var lockerRoom = LockerRoom()
    
    var body: some View {
        List(lockerRoom.teams) { team in
            Text(team.name)
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlayerList()
                .navigationTitle("Players")
        }
    }
}
