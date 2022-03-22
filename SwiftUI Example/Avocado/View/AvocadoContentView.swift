//
//  AvocadoContentView.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2022/03/02.
//

import SwiftUI

struct AvocadoContentView: View {
    
    //MARK:- Properties
    
    var headers:[Header] = headersData
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            
            //MARK:- Header
            
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment:.top,spacing: 0) {
                    ForEach(headers) { item in
                        HeaderView(header: item)
                    }
                }
            }
            
            //MARK:- Footer
            
            VStack(alignment: .center, spacing: 20) {
                Text("All About Avocados")
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                Text("Everything you wanted to know about avocados but were too afraid to ask")
                    .font(.system(.body,design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
            }
            .frame(maxWidth:640)
            .padding()
            .padding(.bottom,85)
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct AvocadoContentView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoContentView(headers: headersData)
    }
}
