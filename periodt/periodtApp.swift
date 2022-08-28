//
//  periodtApp.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import SwiftUI
import Firebase

@main
struct periodtApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)

        }
    }
}
