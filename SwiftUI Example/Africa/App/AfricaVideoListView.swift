//
//  VideoListView.swift
//  VideoListView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AfricaVideoListView: View {
    
    var videos:[AnimalVideo] = Bundle.main.decode("videos.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    AnimalVideoListItemView(video:video)
                        .padding(.vertical,8)
                }
            }//List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos",displayMode: .inline)
        }//NavigationView
    }
}

struct AfricaVideoListView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaVideoListView()
    }
}
