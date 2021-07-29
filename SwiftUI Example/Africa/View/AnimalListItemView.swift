//
//  AnimalListItemView.swift
//  AnimalListItemView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AnimalListItemView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack {
                Text("Lion")
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text("설명")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }
        }
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListItemView()
    }
}
