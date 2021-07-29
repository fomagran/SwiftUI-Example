//
//  VideoPlayerHelper.swift
//  VideoPlayerHelper
//
//  Created by Fomagran on 2021/07/29.
//

import Foundation
import AVKit

var videoPlayer:AVPlayer?

func playVideo(fileName:String,fileFormat:String) -> AVPlayer {

    if let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url:url)
        videoPlayer?.play()
    }
    return videoPlayer!
}
