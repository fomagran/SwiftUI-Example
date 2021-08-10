//
//  AfricaGalleryView.swift
//  AfricaGalleryView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AfricaGalleryView: View {
    
    @State private var selectedAnimal:String = "lion"
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    let animals:[Animal] = Bundle.main.decode("animals.json")
    
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    @State private var gridColumn:Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 8))
                
                Slider(value: $gridColumn,in:2...4,step:1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { value in
                        gridSwitch()
                    }
                
                LazyVGrid(columns:gridLayout,alignment: .center,spacing: 10) {
                    ForEach(animals) { animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = animal.image
                                haptics.impactOccurred()
                            }
                    }
                }//LazyVGrid
                .animation(.easeIn)
                .onAppear {
                    gridSwitch()
                }
            }//VStack
        }//ScrollView
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(AnimalMotionAnimationView())
    }
}

struct AfricaGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaGalleryView()
    }
}
