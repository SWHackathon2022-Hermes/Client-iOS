//
//  LiftView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct LiftView: View {
  @State private var showModal = false
  
  var body: some View {
    NavigationView{
      ZStack {
        LiftMapView()
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

struct LiftView_Previews: PreviewProvider {
  static var previews: some View {
    LiftView()
      .environmentObject(LiftManager())
  }
}
