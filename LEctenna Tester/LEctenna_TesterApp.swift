//
//  LEctenna_TesterApp.swift
//  LEctenna Tester
//
//  Created by administrator on 05/02/2022.
//

import SwiftUI

@main
struct LEctenna_TesterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
