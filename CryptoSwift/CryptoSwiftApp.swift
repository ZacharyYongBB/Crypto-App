//
//  CryptoSwiftApp.swift
//  CryptoSwift
//
//  Created by Zachary on 9/11/22.
//

import SwiftUI

@main
struct CryptoSwiftApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
