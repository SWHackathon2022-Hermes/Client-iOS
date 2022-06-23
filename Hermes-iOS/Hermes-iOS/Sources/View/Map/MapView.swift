//
//  MapView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI
import MapKit

struct MapView: View {
  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 37.566014, longitude: 126.982618),
    span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
  )
  @State private var showModal = false
  
  
  var body: some View {
    NavigationView{
      ZStack {
        Map(coordinateRegion: $region)
          .ignoresSafeArea()
        VStack{
          Spacer()
          HStack{
            Spacer()
            VStack {
              Button(action: {
                self.showModal = true
              }){
                Image("Character")
                  .frame(width: 55.13, height: 50.15)
                  .padding(.bottom, 16.85)
                  .padding(.trailing, 15.87)
              }
              .fullScreenCover(isPresented:  self.$showModal) {
                ChatBotView()
              }
            }
          }
        }
      }
    }
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      MapView()
    }
  }
}
