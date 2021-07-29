//
//  AfricaMainView.swift
//  AfricaMainView
//
//  Created by Fomagran on 2021/07/29.
//
//

import SwiftUI

struct AfricaMainView: View {
    var body: some View {
        TabView{
            AfricaContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            AfricaVideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("watch")
                }
            
            AfricaMapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }
            
            AfricaGalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
            
        }//TabView
        
    }
}

struct AfricaMainView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaMainView()
            .previewDevice("iPhone 12 Pro")
            .preferredColorScheme(.dark)
    }
}
