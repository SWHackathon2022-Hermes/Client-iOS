//
//  PresentButtonView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/23.
//

import SwiftUI

struct PresentButtonView: View {
  
  var body: some View {
    NavigationView{
      VStack {
        NavigationLink(
          destination: ChatBotView()) {
            Image("Character")
          }
      }
      .navigationTitle("")
      .navigationBarHidden(true)
    }
  }
}

struct PresentButtonView_Previews: PreviewProvider {
  static var previews: some View {
    PresentButtonView()
  }
}
