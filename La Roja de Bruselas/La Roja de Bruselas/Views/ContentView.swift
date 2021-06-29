//
//  ContentView.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 6/29/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            PlayerList()
                .navigationTitle("Players")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
