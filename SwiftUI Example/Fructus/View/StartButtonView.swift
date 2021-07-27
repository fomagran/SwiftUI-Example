//
//  StartButtonView.swift
//  StartButtonView
//
//  Created by Fomagran on 2021/07/27.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK:- Propeties
    
    //MARK:- Body
    var body: some View {
        Button(action:{
            print("")
        }) {
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//:HStack
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
        }//:Button
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
