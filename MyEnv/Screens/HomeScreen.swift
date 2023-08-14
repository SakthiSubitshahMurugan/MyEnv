//
//  HomeScreen.swift
//  MyEnv
//
//  Created by Sakthi Subitshah Murugan on 7/15/23.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var theme : SelectedTheme
    var body: some View {
        VStack{
            Text("HOME SCREEN")
                .font(theme.theme.primaryFont)
                .foregroundColor(theme.theme.mainColor)
            Text("This screen has some stuff")
                .font(theme.theme.secondaryFont)
                .foregroundColor(theme.theme.accentColor)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen().environmentObject(MyEnvApp.selectedTheme)
    }
}
   
