//
//  Mark_Your_PlacesApp.swift
//  Mark Your Places
//
//  Created by Tri Pham on 12/30/22.
//

import SwiftUI

@main
struct Mark_Your_PlacesApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var locationViewModel = LocationSearchViewModel()

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
