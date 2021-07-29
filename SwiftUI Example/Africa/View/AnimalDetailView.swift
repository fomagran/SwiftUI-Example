//
//  AnimalDetailView.swift
//  AnimalDetailView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AnimalDetailView: View {
    
    //MARK:- Properties
    
    let animal:Animal
    
    //MARK:- Body
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(Color
                                    .accentColor
                                    .frame(height:6)
                                    .offset(y:24)
                    )
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                Group {
                    AnimalDetailHeadView(headImage: "photo.on.rectangle.angled", headText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                Group {
                    AnimalDetailHeadView(headImage: "questionmark.circle",headText: "Did you know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                Group {
                    AnimalDetailHeadView(headImage: "info.circle", headText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                Group {
                    AnimalDetailHeadView(headImage: "map", headText: "National Parks")
                }
                .padding(.horizontal)
                
            }//VStack
            .navigationBarTitle("Learn about \(animal.name)",displayMode: .inline)
        }//ScrollView
    }
}

//MARK:- Preview

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
                .preferredColorScheme(.dark)
        }
    }
}
