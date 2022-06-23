//
//  ReportOKView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/24.
//

import SwiftUI

struct ReportOKView: View {
    var body: some View {
      ZStack{
        Color(.black)
        Rectangle()
          .foregroundColor(Color(.white))
          .frame(width: 358, height: 208, alignment: .center)
          .cornerRadius(16)
        VStack(spacing: 0){
          Image("check_circle")
            .frame(width: 50, height: 50, alignment: .center)
          Text("민원이 성공적으로 등록되었습니다")
            .font(.custom("NotoSansKR-Regular", size: 16))
            .padding(EdgeInsets(top: 9, leading: 0, bottom: 0, trailing: 0))
          Button(action: {
            withAnimation {
           // self.showPopup.toggle()
            }
          }) {
            Image("okButton")
              .renderingMode(.original)
              .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
          }
          
        }
        
      }
      .padding()
      .background(Color(.white))
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct ReportOKView_Previews: PreviewProvider {
    static var previews: some View {
        ReportOKView()
    }
}
