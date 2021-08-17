//
//  DetailTopView.swift
//  DetailTopView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct DetailTopView: View {
    
    //MARK:- Properties
    
    @EnvironmentObject var shop:Shop
    @State private var isAnimating:Bool = false
    
    //MARK:- Body

    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            }
            .offset(y:isAnimating ? -50:-75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y:isAnimating ? 0:-35)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

//MARK:- Preview

struct DetailTopView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTopView()
            .environmentObject(Shop())
    }
}
