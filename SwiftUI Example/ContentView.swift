//
//  ContentView.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    
    var fruits:[Fruit] = fruitData
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical,4)
                }
            }//List
            .navigationTitle("Fruits")
        }//NavigationView
    }
}

//MARK:- Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
            .previewDevice("iphone 12 Pro")
    }
}
