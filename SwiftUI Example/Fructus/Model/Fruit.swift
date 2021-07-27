//
//  Fruit.swift
//  Fruit
//
//  Created by Fomagran on 2021/07/27.
//

import SwiftUI

struct Fruit:Identifiable {
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
