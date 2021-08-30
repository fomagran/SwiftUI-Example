//
//  SettingsView.swift
//  SettingsView
//
//  Created by Fomagran on 2021/08/30.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("lineCount") var lineCount:Int = 1
    @State private var value:Float = 1.0
    
    var body: some View {
        VStack(spacing:8) {
            HeaderView(title: "Settings")
            
            Text("Lines:\(lineCount)".uppercased())
                .fontWeight(.bold)
            
            Slider(value: $value,in: 1...4,step: 1)
                .accentColor(.accentColor)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
