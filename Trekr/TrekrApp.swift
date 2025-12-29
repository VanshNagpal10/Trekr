//
//  TrekrApp.swift
//  Trekr
//
//  Created by Vansh Nagpal on 24/12/25.
//

import SwiftUI

@main
struct TrekrApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView(location: Locations().primary) 
            }
        }
    }
}
