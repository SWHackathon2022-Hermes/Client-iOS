//
//  BeforeReportView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/23.
//

import SwiftUI

struct BeforeReportView: View {
  @State private var showReport = false
  
    var body: some View {
      Button(action: {
        self.showReport = true
      }){
        Text("민원 등록 하러 가볼까요?")
          .padding()
          .foregroundColor(.white)
          .background(Color(hex: "C691F6"))
          .cornerRadius(16)
          .padding(.horizontal, 16)
          .padding(.bottom, 10)
          .shadow(color: Color(hex: "48414D").opacity(0.2), radius: 16, x: 0, y: 0)
//        Image("Character")
//          .frame(width: 55.13, height: 50.15)
//          .padding(.bottom, 16.85)
//          .padding(.trailing, 15.87)
      }
        .fullScreenCover(isPresented: self.$showReport) {
          ReportView()
        }
    }
}

struct BeforeReportView_Previews: PreviewProvider {
    static var previews: some View {
        BeforeReportView()
    }
}
