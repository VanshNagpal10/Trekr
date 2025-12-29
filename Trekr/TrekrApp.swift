//
//  TrekrApp.swift
//  Trekr
//
//  Created by Vansh Nagpal on 24/12/25.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationStack {
                    ContentView(location: locations.primary)
                }
                .tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationStack {
                    WorldView()
                }
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
            }.environmentObject(locations)
        }
    }
}
