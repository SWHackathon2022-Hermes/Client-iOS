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
    @State private var seletedPin: toiletModel = ToiletManager().toilets.first!
    
    @State private var modalHide: Bool = false
    
    var body: some View {
        
        ZStack {
            Map(coordinateRegion: $region, annotationItems: toiletVM.toilets) { place in
                                    MapAnnotation(coordinate: place.coordinate) {
                                        Image("Pin_toilet")
                                            .onTapGesture {
                                                seletedPin = place
                                            }
                                    }
                                    
                                }
            .edgesIgnoringSafeArea(.all)
 
            VStack(spacing: 0) {
                Spacer()
                
                ZStack {
                    ForEach(toiletVM.toilets) { toilet in
                        if seletedPin.id == toilet.id {
                            DescriptionModal(toilet: toilet)
                                .shadow(color: Color(hex: "48414D").opacity(0.2), radius: 9, x: 0, y: 3)
                                .opacity(modalHide == true ? 0 : 1)
                                .animation(.easeIn, value: modalHide)
                        }
                    }
                    .padding(.bottom, -5)
                }
            }
        }
    }
}

struct ToiletMapView_Previews: PreviewProvider {
    static var previews: some View {
        ToiletMapView()
            .environmentObject(ToiletManager())
    }
}
