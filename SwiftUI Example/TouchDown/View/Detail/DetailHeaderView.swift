//
//  DetailHeaderView.swift
//  DetailHeaderView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct DetailHeaderView: View {
    
    //MARK:- Properties
    
    //MARK:- Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .foregroundColor(.white)
    }
}

//MARK:- Preview

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView()
    }
}
