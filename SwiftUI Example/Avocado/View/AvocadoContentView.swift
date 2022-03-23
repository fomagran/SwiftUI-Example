//
//  AvocadoContentView.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2022/03/02.
//

import SwiftUI

struct AvocadoContentView: View {
    
    //MARK:- Properties
    
    var headers:[Header] = headersData
    var facts:[Fact] = factsData
    var recipes:[Recipe] = recipesData
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            
            //MARK:- Header
            
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment:.top,spacing: 0) {
                    ForEach(headers) { item in
                        HeaderView(header: item)
                    }
                }
            }
            
            //MARK:- Dishes
            
            Text("Avocado Dishes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            
            DishesView()
                .frame(maxWidth:640)
            
            //MARK:- Avocado Facts
            
            Text("Avocado Facts")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment: .top, spacing: 60) {
                    ForEach(facts) { item in
                        FactsView(fact: item)
                    }
                }
            }
            .padding(.vertical)
            .padding(.trailing,20)
            
            //MARK:- Recipe Cards
            
            Text("Avocado Recipes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            
            VStack(alignment: .center, spacing: 20) {
                ForEach(recipes) { item in
                    RecipeCardView(recipe: item)
                }
            }
            .frame(maxWidth:640)
            .padding(.horizontal)
            
            
            //MARK:- Footer
            
            VStack(alignment: .center, spacing: 20) {
                Text("All About Avocados")
                    .fontWeight(.bold)
                 
                Text("Everything you wanted to know about avocados but were too afraid to ask")
                    .font(.system(.body,design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
                    .frame(minHeight:60)
            }
            .frame(maxWidth:640)
            .padding()
            .padding(.bottom,85)
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier:ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct AvocadoContentView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoContentView(headers: headersData,facts: factsData,recipes: recipesData)
    }
}
