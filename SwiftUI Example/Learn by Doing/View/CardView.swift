//
//  CardView.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2021/11/07.
//

import SwiftUI

struct CardView: View {
    
    //MARK:- PROPERTIES
    
    var gradient:[Color] = [Color("Color01"),Color("Color02")]
    //MAKR: - CARD
    
    var body: some View {
        ZStack {
            Image("developer-no1")
            VStack {
                Text("SwiftUI")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Better apps. Less code.")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            .offset(y:-218)
            
            Button {
                print("Button")
            } label: {
                HStack {
                Text("Learn")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .accentColor(.white)
                
                Image(systemName: "arrow.right.circle")
                    .font(Font.title.weight(.medium))
                    .accentColor(.white)
                }
                .padding()
                .padding(.horizontal,24)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y:210)

        }
        .frame(width:335,height:545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .background(Color.pink)
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
