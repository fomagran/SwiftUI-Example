//
//  VideoListView.swift
//  VideoListView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AfricaVideoListView: View {
    
   @State var videos:[AnimalVideo] = Bundle.main.decode("videos.json")
    //진동오게 하는거라고 추측
    let hapticImpact = UIImpactFeedbackGenerator(style:.medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink(destination: AnimalVideoPlayerView(videoSelected: video.id, videoTitle: video.name)) {
                        AnimalVideoListItemView(video:video)
                            .padding(.vertical,8)
                    }
                }
            }//List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos",displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        }//NavigationView
    }
}

struct AfricaVideoListView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaVideoListView()
    }
}
