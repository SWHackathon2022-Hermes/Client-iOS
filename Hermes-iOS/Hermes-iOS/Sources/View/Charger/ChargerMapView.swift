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
    @State private var selectedPin: chargerModel = ChargerManager().chargers.first!
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: chargerVM.chargers) { place in
                                MapAnnotation(coordinate: place.coordinate) {
                                    Image(selectedPin.id == place.id ? "Pin_charge_selected" : "Pin_charge")
                                        .scaleEffect(selectedPin.id == place.id ? 1 : 0.7)
                                        .shadow(radius: selectedPin.id == place.id ? 10 : 0)
                                        .onTapGesture {
                                            selectedPin = place
                                        }
                                        .animation(.easeIn)
                                }
                            }
                            .edgesIgnoringSafeArea(.all)
        VStack(spacing: 0) {
            Spacer()
            
            ZStack {
                ForEach(chargerVM.chargers) { charger in
                    if selectedPin.id == charger.id {
                        ChargerDescriptionModal(charger: charger)
                            .shadow(color: Color(hex: "48414D").opacity(0.2), radius: 9, x: 0, y: 3)
                    }
                }
                .padding(.bottom, -5)
            }
        }
    }
}

struct ChargerMapView_Previews: PreviewProvider {
    static var previews: some View {
        ChargerMapView()
            .environmentObject(ChargerManager())
    }
}
