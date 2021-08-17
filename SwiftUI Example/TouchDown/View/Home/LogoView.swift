//
//  LogoView.swift
//  LogoView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct LogoView: View {
    
    //MARK:- Properties
    
    //MARK:- Body

    var body: some View {
        HStack(spacing:4) {
            Text("Touch")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

//MARK:- Preview

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
