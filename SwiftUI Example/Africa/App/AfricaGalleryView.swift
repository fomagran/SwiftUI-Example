//
//  AfricaGalleryView.swift
//  AfricaGalleryView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AfricaGalleryView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            Text("Gallery")
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(AnimalMotionAnimationView())
    }
}

struct AfricaGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaGalleryView()
    }
}
