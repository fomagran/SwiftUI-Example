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
    @State private var fadeIn:Bool = false
    @State private var moveDownward:Bool = false
    @State private var moveUpward:Bool = false
    @State private var showAlert:Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)

    //MAKR: - CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
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
            .offset(y:moveDownward ? -218 : -300)
            
            Button {
                print("Button")
                playSound(sound: "sound-chime", type: "mp3")
                self.hapticImpact.impactOccurred()
                self.showAlert.toggle()
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
            }
            .offset(y:moveUpward ? 210:300)

        }
        .frame(width:335,height:545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .background(Color.pink)
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear() {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text(card.title),message: Text(card.message),dismissButton: .default(Text("OK")))
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[0])
    }
}
