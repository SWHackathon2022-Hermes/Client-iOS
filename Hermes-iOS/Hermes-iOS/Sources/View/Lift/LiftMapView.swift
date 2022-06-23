//
//  LiftMapView.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/23.
//

import SwiftUI
import MapKit

struct LiftMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.566014, longitude: 126.982618),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    @EnvironmentObject private var vm: LiftManager
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: vm.lifts) { place in
//                    MapMarker(coordinate: place.coordinate,
//                              tint: .purple)
            MapAnnotation(coordinate: place.coordinate) {
                Image("Pin_lift")
            }
                        
                }
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    setMarker()
                }
    }
    
    private func setMarker() {
        print("-----------> View's Lifts \(vm.lifts[0].id)")
        vm.updateLifts()
    }
    
}

struct LiftMapView_Previews: PreviewProvider {
    static var previews: some View {
        LiftMapView()
            .environmentObject(LiftManager())
    }
}
