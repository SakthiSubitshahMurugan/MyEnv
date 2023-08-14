//
//  AppTheme.swift
//  MyEnv
//
//  Created by Sakthi Subitshah Murugan on 7/15/23.
//

import SwiftUI

protocol AppTheme{
    var primaryFont:Font{get set}
    var secondaryFont:Font{get set}
    var mainColor:Color{get set}
    var accentColor:Color{get set}
}



class Theme1:AppTheme{
    var primaryFont: Font = Font.custom("NotoSansMyanar", size: 26)
    
    var secondaryFont: Font = Font.custom("NotoSansMyanar", size: 18)
    
    var mainColor: Color = Color.init(uiColor: .darkGray)

    var accentColor: Color = Color.init(uiColor: .lightGray)
}

class Theme2:AppTheme{
    var primaryFont: Font = Font.custom("PingFangHK-Medium", size: 26)
    
    var secondaryFont: Font = Font.custom("PingFangHK-Medium", size: 18)
    
    var mainColor: Color = Color.init(uiColor: .blue)
    
    var accentColor: Color = Color.init(uiColor: .purple)
}

fileprivate let availableThemes:Array<AppTheme> = [Theme1(),Theme2()]
class SelectedTheme:ObservableObject{
    @Published var theme:AppTheme = availableThemes[0]
    func switchTheme(){
        if let _ = theme as? Theme1{
            theme = availableThemes[1]
        }else {
            self.theme = availableThemes[0]
        }
    }
    
}
