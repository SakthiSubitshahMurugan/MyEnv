//
//  ContentView.swift
//  MyEnv
//
//  Created by Sakthi Subitshah Murugan on 7/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            HomeScreen()
                .font(.title)
                .tabItem {
                    Text("Home")
                }.tag(0)
            SettingsScreen()
                .font(.title)
                .tabItem {
                    Text("Settings")
                }.tag(1)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
