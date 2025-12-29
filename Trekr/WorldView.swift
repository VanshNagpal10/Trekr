//
//  WorldView.swift
//  Trekr
//
//  Created by Vansh Nagpal on 29/12/25.
//

import SwiftUI
import MapKit

struct WorldView: View {
    @State private var region = MapCameraPosition.region(
            MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
                span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30)
            )
        )
    var body: some View {
        Map(position: $region).navigationTitle("Locations")
    }
}

#Preview {
    WorldView()
}

