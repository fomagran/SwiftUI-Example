//
//  HeaderView.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2022/03/21.
//

import SwiftUI

struct HeaderView: View {
    //MARK:- Properties
    
    @State private var showHeadline:Bool = false
    var slideInAnimation:Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image("avocado-slice-1")
                .resizable()
                .aspectRatio(contentMode:.fill)
            
            HStack(alignment: .top, spacing: 0){
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width:4)
                VStack(alignment: .leading, spacing: 6) {
                    Text("Avocado")
                        .font(.system(.title,design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius:3)
                    Text("Avocados are a powerhouse ingredient at any meal for anyone")
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical,0)
                .padding(.horizontal,20)
                .frame(width: 280, height: 105)
                .background(Color("ColorBlackTransparenttLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideInAnimation)
            .onAppear {
                self.showHeadline.toggle()
            }
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
