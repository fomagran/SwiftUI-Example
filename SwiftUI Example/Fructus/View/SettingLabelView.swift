//
//  SettingLabelView.swift
//  SettingLabelView
//
//  Created by Fomagran on 2021/07/28.
//

import SwiftUI

struct SettingLabelView: View {
    
    //MARK:- Properties
    
    var labelText:String
    var labelImage:String
    
    //MARK:- Body
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK:- Previews


struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
    }
}
