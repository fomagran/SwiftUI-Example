//
//  SourceLinkView.swift
//  SourceLinkView
//
//  Created by Fomagran on 2021/07/28.
//

import SwiftUI

struct SourceLinkView: View {
    
    //MARK:- Body
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia",destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//HStack
            .font(.footnote)
        }//GroupBox
    }
}

//MARK:- Previews

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
