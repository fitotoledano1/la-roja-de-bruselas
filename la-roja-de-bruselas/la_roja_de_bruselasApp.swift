//
//  la_roja_de_bruselasApp.swift
//  la-roja-de-bruselas
//
//  Created by Fito Toledano on 2/19/21.
//

import SwiftUI
import Firebase

// necessary to initialize Firebase
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
}

@main
struct la_roja_de_bruselasApp: App {
    
    // Added this to initialize Firebase
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            PlayerListView()
        }
    }
}
