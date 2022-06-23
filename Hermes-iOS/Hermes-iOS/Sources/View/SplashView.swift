//
//  SplashView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/24.
//

import SwiftUI

struct SplashView: View {
  @State private var isActive = false
  @State private var size = 0.8
  @State private var opcity = 0.5
  
  var body: some View {
    
    if isActive {
      ContentView()
    } else {
      VStack{
        Image("Loading")
          .ignoresSafeArea()
      }
      .onAppear {
        DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
          withAnimation {
            self.isActive = true
          }
        }
      }
    }
  }
}

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    SplashView()
  }
}
