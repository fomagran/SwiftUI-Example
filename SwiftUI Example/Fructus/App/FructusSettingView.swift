//
//  SettingView.swift
//  SettingView
//
//  Created by Fomagran on 2021/07/28.
//

import SwiftUI

struct FructusSettingView: View {
    
    //MARK:- Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK:- Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing:20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }//VStack
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(
                    trailing:Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    })
                .padding()
            }//ScrollView
        }//NavigationView
    }
}

//MARK:- Previews

struct FructusSettingView_Previews: PreviewProvider {
    static var previews: some View {
        FructusSettingView()
    }
}
