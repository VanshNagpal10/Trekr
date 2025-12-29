//
//  ContentView.swift
//  Trekr
//
//  Created by Vansh Nagpal on 24/12/25.
//

import SwiftUI


struct ContentView: View {
    let location: Location

    var body: some View {
        ScrollView{
            Image(location.heroPicture).resizable().scaledToFit()
            Text(location.name)
                .font(.largeTitle)
                .bold().multilineTextAlignment(.center)
            
            Text(location.country).font(.title).foregroundStyle(.secondary)
            
            Text(location.description).padding(.horizontal)
            
            Text("Did You Know?").font(.title3).bold().padding(.top)
            Text(location.more).padding(.horizontal)
                    
            
        }.navigationTitle("Discover")
                
    }
}

#Preview {

    NavigationStack {
        ContentView(location: Locations().primary)
    }

}
