//
//  CategoryItemView.swift
//  CategoryItemView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct CategoryItemView: View {
    
    //MARK:- Properties
    
    let category:Category
    
    //MARK:- Body

    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray,lineWidth: 1))
        }
    }
}

//MARK:- Preview

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
    }
}
