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
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    
    //MARK:- Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing:20) {
                    GroupBox(label:SettingLabelView(labelText: "Fructus", labelImage: "info.circle")) {
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment:.center,spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat,sodium,and calories. None have cholestrerol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical,4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased())
                        }
                    }
                    
                    GroupBox(label: SettingLabelView(labelText: "Application", labelImage: "app.iphone")) {
                        Divider().padding(.vertical,4)
                        SettingRowView(name: "Developer", content: "Fomagran")
                        SettingRowView(name: "Designer", content: "Robert")
                        SettingRowView(name: "Compatibility", content: "iOS 14")
                        SettingRowView(name: "Website",linkLabel: "Fomagran's Blog",linkDestination:"https://fomaios.tistory.com")
                        SettingRowView(name: "SwiftUI", content: "3.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                        
                    }
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
            .preferredColorScheme(.dark)
    }
}
