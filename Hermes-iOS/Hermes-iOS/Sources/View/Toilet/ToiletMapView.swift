//
//  ToiletMapView.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/24.
//

import SwiftUI
import MapKit

struct ToiletMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.429849, longitude: 126.654871),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    @EnvironmentObject private var toiletVM: ToiletManager
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: toiletVM.toilets) { place in
                                MapAnnotation(coordinate: place.coordinate) {
                                    Image("Pin_toilet")
                                }
                            }
                            .edgesIgnoringSafeArea(.all)
    }
}

struct ToiletMapView_Previews: PreviewProvider {
    static var previews: some View {
        ToiletMapView()
            .environmentObject(ToiletManager())
    }
}
