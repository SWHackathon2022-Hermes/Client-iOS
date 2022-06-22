//
//  Map.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/23.
//

import SwiftUI
import MapKit

struct Map: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.566014, longitude: 126.982618),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .ignoresSafeArea()
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Map()
    }
}
