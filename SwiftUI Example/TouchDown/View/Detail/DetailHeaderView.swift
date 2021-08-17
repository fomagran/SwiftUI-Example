//
//  DetailHeaderView.swift
//  DetailHeaderView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct DetailHeaderView: View {
    
    //MARK:- Properties
    
    @EnvironmentObject var shop:Shop
    
    //MARK:- Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .foregroundColor(.white)
    }
}

//MARK:- Preview

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView()
            .environmentObject(Shop())
    }
}
