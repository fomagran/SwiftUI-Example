//
//  SwiftUI_ExampleApp.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2021/07/27.
//

import SwiftUI

@main
struct SwiftUI_ExampleApp: App {
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                FructusOnboardingView()
            }else {
                FructusContentView()
            }
        }
    }
}
