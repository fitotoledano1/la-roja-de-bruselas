//
//  La_Roja_de_BruselasApp.swift
//  La Roja de Bruselas
//
//  Created by Fito Toledano on 6/29/21.
//

import SwiftUI
import Firebase

//final class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        return true
//    }
//}

@main
struct La_Roja_de_BruselasApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
