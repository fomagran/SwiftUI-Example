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
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                ScrollView(.vertical,showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
            }
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
                            .padding(.top,-105))
            
            Spacer()
        }
        .zIndex(0)
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
