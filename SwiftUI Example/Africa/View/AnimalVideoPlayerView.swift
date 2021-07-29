//
//  VideoPlayerView.swift
//  VideoPlayerView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI
import AVKit

struct AnimalVideoPlayerView: View {
    
    var videoSelected:String
    var videoTitle:String
    
    var body: some View {
        VStack {
            VideoPlayer(player:playVideo(fileName:videoSelected, fileFormat:"mp4")) {
                
            }
            .overlay(Image("Africalogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width:32,height: 32)
                        .padding(.top,6)
                        .padding(.horizontal,8),
                     alignment: .topLeading)
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle,displayMode: .inline)
    }
}

struct AnimalVideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalVideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
