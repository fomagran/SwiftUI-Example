//
//  AfricaCoverImageView.swift
//  AfricaCoverImageView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AfricaCoverImageView: View {
    
    //MARK:- Properties
    
    let coverImages:[CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK:- Body
    
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFit()
            }//ForEach
        }//TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK:- Preview
struct AfricaCoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaCoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
