//
//  ChatBotCustomTabBar.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/23.
//

import SwiftUI

struct ChatBotCustomTabBar: View {
  
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    ZStack{
      Color(.white)
      HStack(alignment: .bottom, spacing: 0) {
        Button(action : {presentationMode.wrappedValue.dismiss()}) {
          Image(systemName: "chevron.left")
            .font(.custom("SF-pro", size: 20))
            .foregroundColor(Color(hex: "1F1F1F"))
            .frame(width: 24, height: 24, alignment: .center)
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 0))
        }
        
        Text("챗봇에게 질문하기")
          .font(.custom("NotoSansKR-Bold", size: 16))
          .foregroundColor(Color(hex: "1F1F1F"))
          .frame(maxWidth: .infinity, alignment: .trailing)
          .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 134))
      }
    }
  }
}

struct ChatBotCustomTabBar_Previews: PreviewProvider {
  static var previews: some View {
    ChatBotCustomTabBar()
      .previewLayout(.fixed(width: 390, height: 100-47))
  }
}
