//
//  FruitDetailView.swift
//  FruitDetailView
//
//  Created by Fomagran on 2021/07/28.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK:- Properties
    
    var fruit:Fruit
    
    //MARK:- Body
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false) {
                
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .center, spacing: 20) {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                            
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            
                    }//VStack
                    .padding(.horizontal,20)
                    .frame(maxWidth:640,alignment: .center)
                }//VStack
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }//ScrollView
            .edgesIgnoringSafeArea(.top)
        }//NavigationView
    }
}

//MARK:- Preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
            .previewDevice("iPhone 11 Pro")
    }
}
