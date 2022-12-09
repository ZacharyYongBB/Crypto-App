//
//  SettingsView.swift
//  CryptoSwift
//
//  Created by Zachary on 9/12/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://www.linkedin.com/in/zachary-yongbb/")!
    
    var body: some View {
        NavigationView {
            List {
                zacharySection
                coingeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .foregroundColor(.blue)
            .listStyle(SidebarListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
//                    XMarkButton()
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var zacharySection : some View {
        Section(header: Text("Zachary Yong").foregroundColor(Color.theme.accent)) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This is my crypto app 🚀, made using MVVM Architecture, Combine, & CoreData. Thank you @SwiftfulThinking")
                    .kerning(3)
//                    .tracking(5)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on YouTube 🥳", destination: youtubeURL)
            Link("Buy me a coffee ☕️", destination: coffeeURL)
        }
    }
    
    private var coingeckoSection : some View {
        Section(header: Text("Coingecko").foregroundColor(Color.theme.accent)) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .kerning(3)
//                    .tracking(5)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
        }
    }
    
    private var developerSection : some View {
        Section(header: Text("Developer").foregroundColor(Color.theme.accent)) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Zachary Yong. It uses SwiftUI and is written 100% in Swift. The Project benefits from multi-threading, publishers/subscribers, and data persistence")
                    .kerning(3)
//                    .tracking(5)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("GitHub 🐈‍⬛", destination: coingeckoURL)
        }
    }
    
    private var applicationSection : some View {
        Section(header: Text("Application").foregroundColor(Color.theme.accent)) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }

}
