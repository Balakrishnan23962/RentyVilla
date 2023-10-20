//
//  LocationOfHouse.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 19/10/23.
//

import SwiftUI
import MapKit

struct LocationOfHouse: View {
    @Namespace var location
    @State var cameraPosition: MapCameraPosition = .region(.mapRegion)
    var body: some View {
        ZStack {
            Map(position: $cameraPosition) {
                Annotation("My Location", coordinate: .userLocation) {
                    ZStack {
                        Circle()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.blue).opacity(0.5)
//                        Circle()
//                            .frame(width: 20, height: 20)
//                            .foregroundStyle(.white)
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundStyle(.blue)
                    }
                }
            }
            .mapControls {
                MapCompass()
                MapPitchToggle(scope: location)
                MapUserLocationButton(scope: location)
            }
        }
    }
}

#Preview {
    LocationOfHouse()
}

extension CLLocationCoordinate2D {
    static var userLocation: CLLocationCoordinate2D {
        return .init(latitude: 11.0619488, longitude: 76.9459347)
    }
}

extension MKCoordinateRegion {
    static var mapRegion: MKCoordinateRegion {
        return .init(center: .userLocation, latitudinalMeters: 1000, longitudinalMeters: 1000)
    }
}
