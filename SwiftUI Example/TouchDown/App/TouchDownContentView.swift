//
//  TouchDownContentView.swift
//  TouchDownContentView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct TouchDownContentView: View {
    

    var body: some View {
        ZStack {
            VStack(spacing:0) {
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical,showsIndicators: false,content: {
                    VStack(spacing:0) {
                        FeaturedTabView()
                            .padding(.vertical,20)
                            .frame(height:UIScreen.main.bounds.width/1.475)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout,spacing: 15) {
                            ForEach(products) {product in
                                ProductItemView(product: product)
                            }
                        }
                        .padding(15)
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }//VStack
                })//Scroll
                
                
            }//VStack
            .background(touchDownBackground.ignoresSafeArea(.all,edges: .all))
        }//ZStack
        .ignoresSafeArea(.all,edges:.top)
        
        
    }
}

struct TouchDownContentView_Previews: PreviewProvider {
    static var previews: some View {
        TouchDownContentView()
    }
}
