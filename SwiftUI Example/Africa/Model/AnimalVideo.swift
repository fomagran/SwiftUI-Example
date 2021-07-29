//
//  AnimalVideo.swift
//  AnimalVideo
//
//  Created by Fomagran on 2021/07/29.
//

import Foundation

struct AnimalVideo:Codable,Identifiable {
    let id:String
    let name:String
    let headline:String
    
    //Computed Property
    var thumnail:String {
        "video-\(id)"
    }
}
