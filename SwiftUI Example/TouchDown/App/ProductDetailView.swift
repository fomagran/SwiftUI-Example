//
//  ProductDetailView.swift
//  ProductDetailView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            DetailNavigationBarView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            DetailHeaderView()
                .padding(.horizontal)
            
            DetailTopView()
                .padding(.horizontal)
            
            Spacer()
        }
        .ignoresSafeArea(.all,edges: .all)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
                        .ignoresSafeArea(.all,edges: .all))
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
