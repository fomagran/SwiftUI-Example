//
//  ContentView.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2021/07/27.
//

import SwiftUI

struct FructusContentView: View {
    
    //MARK:- Properties
    
    @State private var isShowingSettings:Bool = false
    
    var fruits:[Fruit] = fruitData
    
    //MARK:- Body
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical,4)
                    }//NavigationLink
                }
            }//List
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })//Button
                    .sheet(isPresented:$isShowingSettings) {
                        FructusSettingView()
                    }
            )
        }//NavigationView
    }
}

//MARK:- Previews
struct FructusContentView_Previews: PreviewProvider {
    static var previews: some View {
        FructusContentView(fruits: fruitData)
            .previewDevice("iphone 12 Pro")
    }
}
