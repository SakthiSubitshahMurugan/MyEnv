//
//  SettingsScreen.swift
//  MyEnv
//
//  Created by Sakthi Subitshah Murugan on 7/15/23.
//

import SwiftUI

struct SettingsScreen: View {
    @EnvironmentObject var theme : SelectedTheme
    var body: some View {
        VStack{
            Text("SETTINGS SCREEN")
                .font(theme.theme.primaryFont)
                .foregroundColor(theme.theme.mainColor)
            Text("Change your theme here")
                .font(theme.theme.secondaryFont)
                .foregroundColor(theme.theme.accentColor)
            Button.init {
                self.theme.switchTheme()
            } label: {
                ZStack{
                    Rectangle()
                        .frame(width: 200, height: 30)
                    Text("TOGGLE THEME").foregroundColor(.white)
                }
            }

        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen().environmentObject(MyEnvApp.selectedTheme)
    }
}
