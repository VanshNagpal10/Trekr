//
//  WorldView.swift
//  Trekr
//
//  Created by Vansh Nagpal on 29/12/25.
//

import SwiftUI
import MapKit

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    @State private var region = MapCameraPosition.region(
            MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
                span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30)
            )
        )
    var body: some View {
        Map(position: $region) {
            
                    ForEach(locations.places) { location in
                        
                        Annotation(location.name, coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                            NavigationLink(destination: ContentView(location: location)){
                                Image(location.country)
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 80, height: 40)
                                    .shadow(radius: 3)
                            }
                        }
                    }
            }
            .navigationTitle("Locations")
    }
}

#Preview {
    WorldView()
}

