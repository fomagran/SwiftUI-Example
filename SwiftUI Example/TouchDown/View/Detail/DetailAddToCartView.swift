//
//  DetailAddToCartView.swift
//  DetailAddToCartView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct DetailAddToCartView: View {
    
    @EnvironmentObject var shop:Shop
    
    var body: some View {
        Button(action:{}) {
            Spacer()
            Text("Add to cart")
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding(15)
        .background(Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())
    }
}

struct DetailAddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        DetailAddToCartView()
            .environmentObject(Shop())
    }
}
