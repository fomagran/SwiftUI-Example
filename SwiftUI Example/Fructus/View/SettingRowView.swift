//
//  SettingRowView.swift
//  SettingRowView
//
//  Created by Fomagran on 2021/07/28.
//

import SwiftUI

struct SettingRowView: View {
    
    //MARK:- Properties
    
    var name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    
    //MARK:- Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if let content = content {
                    Text(content)
                }else if let linkLabel = linkLabel,let linkDestination = linkDestination{
                    Link(linkLabel,destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK:- Previews

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Developer", content: "Fomagran")
                .previewLayout(.fixed(width: 375, height: 60))
                .previewDisplayName("preview 1")
                .padding()
        }
    }
}
