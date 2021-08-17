//
//  Constants.swift
//  Constants
//
//  Created by Fomagran on 2021/08/17.
//

import SwiftUI

//DATA

let products:[Product] = Bundle.main.decode("product.json")
let categories:[Category] = Bundle.main.decode("category.json")
let players:[Player] = Bundle.main.decode("player.json")

//Color

let touchDownBackground:Color = Color("ColorBackground")
let colorGray:Color = Color(UIColor.systemGray4)

//LAYOUT

let columnSpacing:CGFloat = 10
let rowSpacing:CGFloat = 10
var gridLayout:[GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}




