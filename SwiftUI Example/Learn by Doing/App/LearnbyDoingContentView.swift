//
//  LearnbyDoingContentView.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2021/11/07.
//

import SwiftUI

struct LearnbyDoingContentView: View {
    
    //MARK: - CONTENT
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack {
                ForEach(0..<6) { item in
                    CardView()
                }
            }
            .padding(20)
        }
    }
}

struct LearnbyDoingContentView_Previews: PreviewProvider {
    static var previews: some View {
        LearnbyDoingContentView()
    }
}
