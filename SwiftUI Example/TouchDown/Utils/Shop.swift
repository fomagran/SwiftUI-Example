//
//  Shop.swift
//  Shop
//
//  Created by Fomagran on 2021/08/17.
//

import Foundation

class Shop:ObservableObject{
    @Published var showingProduct:Bool = false
    @Published var selectedProduct:Product? = nil
    
}
