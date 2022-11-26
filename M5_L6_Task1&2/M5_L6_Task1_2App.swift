//
//  M5_L6_Task1_2App.swift
//  M5_L6_Task1&2
//
//  Created by Bekhruz Hakmirzaev on 26/11/22.
//

import SwiftUI

@main
struct M5_L6_Task1_2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
