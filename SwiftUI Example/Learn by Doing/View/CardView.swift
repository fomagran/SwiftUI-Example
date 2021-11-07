//
//  CardView.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2021/11/07.
//

import SwiftUI

struct CardView: View {
    
    //MARK:- PROPERTIES
    
    var card:Card

    //MAKR: - CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
            VStack {
                Text(card.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            .offset(y:-218)
            
            Button {
                print("Button")
                playSound(sound: "sound-chime", type: "mp3")
            } label: {
                HStack {
                    Text(card.callToAction.uppercased())
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .accentColor(.white)
                
                Image(systemName: "arrow.right.circle")
                    .font(Font.title.weight(.medium))
                    .accentColor(.white)
                }
                .padding()
                .padding(.horizontal,24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y:210)

        }
        .frame(width:335,height:545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .background(Color.pink)
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[0])
    }
}
