//
//  CryptoSwiftApp.swift
//  CryptoSwift
//
//  Created by Zachary on 9/11/22.
//

import SwiftUI

@main
struct CryptoSwiftApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
