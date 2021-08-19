//
//  HideKeyboardExtension.swift
//  HideKeyboardExtension
//
//  Created by Fomagran on 2021/08/18.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hidKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

