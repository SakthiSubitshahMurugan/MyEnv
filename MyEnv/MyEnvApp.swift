//
//  MyEnvApp.swift
//  MyEnv
//
//  Created by Sakthi Subitshah Murugan on 7/15/23.
//

import SwiftUI

@main
struct MyEnvApp: App {
    static let selectedTheme = SelectedTheme()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(MyEnvApp.selectedTheme)
        }
    }
}
