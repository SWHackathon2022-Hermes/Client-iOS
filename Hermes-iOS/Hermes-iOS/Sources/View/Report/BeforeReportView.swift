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
    VStack(spacing: 19.85){
      Image("Character")
        .frame(width: 55.13, height: 50.15)
      Text(" 홈 파임, 타일 깨짐 등의\n민원을 등록할 수 있어요!")
        .font(.custom("NotoSansKR-Regular", size: 25))
        .foregroundColor(Color(hex: "9B9B9B"))
        .padding(.bottom, 42-19.85)

      Button(action: {
        self.showReport = true
      }){
        Image("Group 19")
          .frame(width: 358, height: 50)
          .padding(.leading, 16)
          .padding(.trailing, 16)
      }
      .fullScreenCover(isPresented: self.$showReport) {
        ReportView()
      }
    }
  }
}

struct BeforeReportView_Previews: PreviewProvider {
  static var previews: some View {
    BeforeReportView()
  }
}
