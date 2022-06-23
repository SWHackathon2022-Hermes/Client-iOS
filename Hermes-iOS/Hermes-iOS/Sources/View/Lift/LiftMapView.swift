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
    @State private var selectedPin: row = row(NODE_WKT: "", SW_NM: "", SGG_NM: "", EMD_NM: "")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: vm.lifts) { place in
            MapAnnotation(coordinate: place.coordinate) {
                Image(selectedPin.id == place.id ? "Pin_lift_selected" : "Pin_lift")
                    .scaleEffect(selectedPin.id == place.id ? 1 : 0.7)
                    .shadow(radius: selectedPin.id == place.id ? 10 : 0)
                    .onTapGesture {
                        selectedPin = place
                    }
                    .animation(.easeIn)
            }
                        
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            setMarker()
        }
        
        VStack(spacing: 0) {
            Spacer()
            
            ZStack {
                ForEach(vm.lifts) { lift in
                    if selectedPin.id == lift.id {
                        LiftDescriptionModal(lift: lift)
                            .shadow(color: Color(hex: "48414D").opacity(0.2), radius: 9, x: 0, y: 3)
                    }
                }
                .padding(.bottom, -5)
            }
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
