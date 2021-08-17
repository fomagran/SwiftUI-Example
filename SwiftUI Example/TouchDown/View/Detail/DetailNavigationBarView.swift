//
//  DetailNavigationBarView.swift
//  DetailNavigationBarView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct DetailNavigationBarView: View {
    
    //MARK:- Properties
    
    @EnvironmentObject var shop:Shop
    
    //MARK:- Body
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

//MARK:- Preview

struct DetailNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        DetailNavigationBarView()
            .environmentObject(Shop())
    }
}
