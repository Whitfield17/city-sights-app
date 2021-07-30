//
//  CitySightsApp.swift
//  CitySightsApp
//
//  Created by Braydon Whitfield on 2021-07-29.
//

import SwiftUI

@main
struct CitySightsApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environmentObject(ContentModel())
        }
    }
}
