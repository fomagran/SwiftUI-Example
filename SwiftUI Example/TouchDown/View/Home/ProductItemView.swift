//
//  ProductItemView.swift
//  ProductItemView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct ProductItemView: View {
    
    //MARK:- Properties
    
    let product:Product
    
    //MARK:- Body

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }
    }
}

//MARK:- Preview

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
    }
}
