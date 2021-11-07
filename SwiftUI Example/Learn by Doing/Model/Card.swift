//
//  Card.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2021/11/07.
//

import SwiftUI

struct Card:Identifiable {
    var id = UUID()
    var title:String
    var headline:String
    var imageName:String
    var callToAction:String
    var message:String
    var gradientColors:[Color]
}
