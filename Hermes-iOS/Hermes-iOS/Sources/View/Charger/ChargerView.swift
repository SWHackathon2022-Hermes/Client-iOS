//
//  ChargerView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct ChargerView: View {
  @State private var showModal = false
  
  var body: some View {
    NavigationView{
      ZStack {
        ChargerMapView()
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

struct ChargerView_Previews: PreviewProvider {
  static var previews: some View {
    ChargerView()
      .environmentObject(ChargerManager())
  }
}
