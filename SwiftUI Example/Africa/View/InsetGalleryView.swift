//
//  InsetGalleryView.swift
//  InsetGalleryView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animal:Animal
    
    var body: some View {
        
        //컬렉션뷰처럼 만드는법
        ScrollView(.horizontal,showsIndicators: false) {
            HStack (alignment: .center, spacing: 16){
                ForEach(animal.gallery,id:\.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                    .cornerRadius(12)
                }
            }//HStack
        }//ScrollView
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
    }
}
