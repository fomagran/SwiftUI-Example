//
//  FeatureItemView.swift
//  FeatureItemView
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

struct FeatureItemView: View {
    
    //MARK:- Properties
    let player:Player
    
    //MARK:- Body

    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK:- Preview

struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(player: players[0])
    }
}
