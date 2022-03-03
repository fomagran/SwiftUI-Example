//
//  AppView.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2022/03/02.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })
            AvocadoContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppView()
                .previewDevice("iPhone 13 Pro")
        }
    }
}
