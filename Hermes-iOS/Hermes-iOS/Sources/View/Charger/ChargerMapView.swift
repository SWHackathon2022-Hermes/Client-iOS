//
//  ChargerMapView.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/24.
//

import SwiftUI
import MapKit

struct ChargerMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.564475, longitude: 127.029017),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    @EnvironmentObject private var chargerVM: ChargerManager
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: chargerVM.chargers) { place in
                                MapAnnotation(coordinate: place.coordinate) {
                                    Image("Pin_charge")
                                }
                            }
                            .edgesIgnoringSafeArea(.all)
    }
}

struct ChargerMapView_Previews: PreviewProvider {
    static var previews: some View {
        ChargerMapView()
            .environmentObject(ChargerManager())
    }
}
