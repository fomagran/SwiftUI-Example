//
//  SectionView.swift
//  SectionView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct SectionView: View {
    
    //MARK:- Properties
    @State var rotateClockwise:Bool
    
    //MARK:- Body
    
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            Text("Categories")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                //글씨 세로로 기울임
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 :-90))
            
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//MARK:- Preview

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
    }
}
