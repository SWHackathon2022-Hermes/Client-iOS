//
//  ToiletView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct ToiletView: View {
  @State private var showModal = false
  
  var body: some View {
    NavigationView{
      ZStack {
        ToiletMapView()
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

struct ToiletView_Previews: PreviewProvider {
  static var previews: some View {
    ToiletView()
      .environmentObject(ToiletManager())
  }
}
