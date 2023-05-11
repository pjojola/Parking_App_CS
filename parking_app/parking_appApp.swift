//
//  parking_appApp.swift
//  parking_app
//
//  Created by Pat Jojola on 4/9/23.
//

import SwiftUI

@main
struct parking_appApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(locationViewModel)
        }
    }
}
