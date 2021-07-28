//
//  FruitNutrientViews.swift
//  FruitNutrientViews
//
//  Created by Fomagran on 2021/07/28.
//

import SwiftUI

struct FruitNutrientView: View {
    
    //MARK:- Properties
    
    var fruit:Fruit
    let nutrients:[String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    //MARK:- Body
    
    var body: some View {
        
        GroupBox() {
            //처음에 숨겨져 있다가 누르면 텍스트가 나타남
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count,id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }//DisclosureGroup
            
        }//GroupBox
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
