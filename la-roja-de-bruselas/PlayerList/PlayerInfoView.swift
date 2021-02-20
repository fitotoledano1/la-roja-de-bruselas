//
//  PlayerInfoView.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 2/19/21.
//

import SwiftUI

struct PlayerInfoView: View {
    
    var player: Player
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ImageWithURL(player.playerPictureUrl)
                    .scaledToFit()
                    .frame(height: 200)

                Text(player.name)
                    .font(.largeTitle)
                    .bold()
                
                VStack (alignment: .leading, spacing: 4) {
                    Text("About")
                        .bold()
                    Text(player.bio)
                }
                
                VStack (alignment: .leading, spacing: 4) {
                    Text("Position")
                        .bold()
                    Text("\(player.position)")
                }
                
                VStack (alignment: .leading, spacing: 4) {
                    Text("Statistics")
                        .bold()
                    Text("""
                        \(player.gamesPlayed) games played.
                        \(player.goalsScored) goals scored.
                        """)
                }
            }
            .padding()
        }
    }
}

struct PlayerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerInfoView(player: MockData.player1)
    }
}
