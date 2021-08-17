//
//  FooterView.swift
//  FooterView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct FooterView: View {
    
    //MARK:- Properties
    
    //MARK:- Body

    var body: some View {

        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Fomagran \n All right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
                .foregroundColor(.gray)
        }
    }
}

//MARK:- Preview

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
