//
//  Constants.swift
//  Constants
//
//  Created by Fomagran on 2021/08/18.
//

//Widget에서 쓰려면 오른쪽 Target Membership에서 체크해줘야함

import SwiftUI

//MARK:- FORMATTER

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

//MARK:- UI

var backgroundGradient:LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink,Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

//MARK:- UX

let feedback = UINotificationFeedbackGenerator()
