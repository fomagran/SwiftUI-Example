//
//  AnimalVideoListView.swift
//  AnimalVideoListView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AnimalVideoListItemView: View {
    
    let video:AnimalVideo
    var body: some View {
        HStack(spacing:10) {
            ZStack {
                Image(video.thumnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height:80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height:32)
                    .shadow(radius: 4)
            }//ZStack
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }//VStack
        }//HStack
    }
}

struct AnimalVideoListItemView_Previews: PreviewProvider {
    
    static let videos:[AnimalVideo] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        AnimalVideoListItemView(video: videos[0])
    }
}
