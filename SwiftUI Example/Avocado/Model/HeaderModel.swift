//
//  HeaderModel.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2022/03/21.
//

import SwiftUI

//MARK- Header Model

struct Header:Identifiable {
    var id = UUID()
    var image:String
    var headline:String
    var subheadline:String
}
