//
//  DetailQuantityFavoriteView.swift
//  DetailQuantityFavoriteView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct DetailQuantityFavoriteView: View {
    
    //MARK:- Properties
    @State private var counter:Int = 0
    
    //MARK:- Body
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }) {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth:36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }) {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        }
        .font(.system(.title,design:.rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

//MARK:- Preview

struct DetailQuantityFavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        DetailQuantityFavoriteView()
    }
}
