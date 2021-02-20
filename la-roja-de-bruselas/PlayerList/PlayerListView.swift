//
//  ContentView.swift
//  la-roja-de-bruselas
//
//  Created by Fito Toledano on 2/19/21.
//

import SwiftUI

struct PlayerListView: View {
    
    @StateObject var viewModel = PlayerListViewModel()
    
    var body: some View {
        NavigationView {
            List (viewModel.players) { player in
                NavigationLink(
                    destination: PlayerInfoView(player: player),
                    label: {
                        ImageWithURL(player.profilePictureUrl)
                            .scaledToFit()
                            .frame(width: 75, height: 75)
                            .padding(.trailing, 8)
                            
                        Text(player.name)
                            .bold()
                    }
                )
            }
            .navigationTitle("Players")
            .onAppear {
                viewModel.fetchPlayers()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}
