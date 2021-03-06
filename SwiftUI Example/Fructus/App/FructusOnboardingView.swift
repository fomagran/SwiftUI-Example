//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by Fomagran on 2021/07/27.
//

import SwiftUI

struct FructusOnboardingView: View {
    
    //MARK:- Properties
    
    var fruits:[Fruit] = fruitData
    
    //MARK:- Body
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitsCardView(fruit:item)
            }
        }//:TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

//MARK:- Preview
struct FructusOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        FructusOnboardingView(fruits: fruitData)
            .previewDevice("iphone 12 pro")
    }
}
