//
//  ContentView.swift
//  jobbless
//
//  Created by ZGenius on 16/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView().tabItem{
                Image(systemName: "house")
            }
            
            
            
            MessagesView().tabItem {
                Image(systemName: "envelope.fill")
            }
            
            SettingsView().tabItem {
                Image(systemName: "person")
            }
        }
        
    }
}

#Preview {
    ContentView()
}


