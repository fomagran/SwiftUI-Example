//
//  SwiftUI_ExampleApp.swift
//  SwiftUI Example
//
//  Created by Fomagran on 2021/07/27.
//

import SwiftUI 

@main
struct SwiftUI_ExampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            DevoteContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
