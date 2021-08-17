//
//  TitleView.swift
//  TitleView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct TitleView: View {
    
    //MARK:- Properties
    
    var title:String
    
    //MARK:- Body

    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}

//MARK:- Preview

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
    }
}
