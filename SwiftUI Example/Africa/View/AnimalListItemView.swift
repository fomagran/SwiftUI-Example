//
//  AnimalListItemView.swift
//  AnimalListItemView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AnimalListItemView: View {
    
    //MARK:- Properties
    
    let animal:Animal
    
    //MARK:- Body
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }
        }
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
    }
}
