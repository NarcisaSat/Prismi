//
//  RootNavigation.swift
//  Prismi
//
//  Created by Apprenant77 on 26/09/2023.
//

import SwiftUI

struct RootNavigation: View {
        @State private var myBackColor: Color = Color("Colorblue")
        @State private var endOfSettings = false
        @State private var selectedType = ""
        @State private var selectedAccessFont = Color("Coloryellow")
    @State private var selectedAccessBack = Color("Colorblue")
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(named: "Colorblued")
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "Colorwhite")
    }
    var body: some View {
        
        if endOfSettings {
            TabView() {
                // Premier onglet
                MesRecomandations(selectedTypeFromSetting: selectedType, testColor: selectedAccessBack)
                    .tabItem {
                        Label("Mes recommandations", systemImage: "dice.fill")
                    }

                
                // Deuxième onglet
                Ludotheque2(selectedTypeFromSetting: "", testColor:(Color("Colorblued")))
                    .tabItem {
                        Label("Ludotheque2", systemImage: "bookmark.fill")
                    }
            }
            .tint(.black)
            
        } else {
            Etape1(startOfSetting: $endOfSettings, selectedType: $selectedType, selectedAccessFont: $selectedAccessFont, selectedAccessBack: $selectedAccessBack)
        }
        
        

    }
}
struct RootNavigation_Previews: PreviewProvider {
    static var previews: some View {
        RootNavigation()
    }
}

