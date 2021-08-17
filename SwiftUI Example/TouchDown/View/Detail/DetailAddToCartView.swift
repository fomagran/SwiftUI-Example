//
//  DetailAddToCartView.swift
//  DetailAddToCartView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct DetailAddToCartView: View {
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
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
        .clipShape(Capsule())
    }
}

struct DetailAddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        DetailAddToCartView()
    }
}
