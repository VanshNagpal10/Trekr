//
//  Locations.swift
//  Trekr
//
//  Created by Vansh Nagpal on 29/12/25.
//

import SwiftUI
import Foundation
import Combine

class Locations: ObservableObject {
    
    @Published var places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        places = try! decoder.decode([Location].self, from: data)
    }
}

