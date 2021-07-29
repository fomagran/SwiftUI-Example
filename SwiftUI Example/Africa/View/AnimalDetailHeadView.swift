//
//  AnimalDetailHeadView.swift
//  AnimalDetailHeadView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AnimalDetailHeadView: View {
    
    //MARK:- Properties
    
    var headImage:String
    var headText:String
    
    var body: some View {
        HStack {
            Image(systemName: headImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headText)
                .font(.title3)
                .fontWeight(.bold)
        }//HStack
    }
}

struct AnimalDetailHeadView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetailHeadView(headImage: "photo.on.rectangle.angled", headText: "Wilderness in Pictures")
    }
}
