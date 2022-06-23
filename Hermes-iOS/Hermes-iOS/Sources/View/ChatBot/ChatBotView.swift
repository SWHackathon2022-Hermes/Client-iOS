//
//  ChatBotView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct ChatBotView: View {
  
  @State private var messageText = ""
  @State var messages: [String] = ["안녕하세요!"]
  
  var body: some View {
    ZStack{
      Color(hex: "EBEBEB")
        .edgesIgnoringSafeArea(.bottom)
        .padding(.top,500)
      
      VStack(spacing: 0) {
        ChatBotCustomTabBar()
          .frame(width: 390, height: 100-47, alignment: .center)
        LinearGradient(colors: [.white, Color(.sRGB, white: 0.75, opacity: 1)], startPoint: .bottom, endPoint: .top)
          .frame(height: 4)
          .opacity(1)
        
        ScrollView {
          ForEach(messages, id: \.self) { message in
            if message.contains("[USER]") {
              let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
              
              HStack {
                Spacer()
                Text(newMessage)
                  .padding()
                  .foregroundColor(.white)
                  .background(Color(hex: "C691F6"))
                  .cornerRadius(16)
                  .padding(.horizontal, 16)
                  .padding(.bottom, 10)
                  .shadow(color: Color(hex: "48414D").opacity(0.2), radius: 16, x: 0, y: 0)
              }
            } else {
              HStack(spacing: 11) {
                Image("Character")
                  .resizable()
                  .frame(width: 32, height: 32)
                  .padding(.leading, 18)
                Text(message)
                  .font(.custom("NotoSansKR-Regular", size: 16))
                  .padding(EdgeInsets(top: 11, leading: 8, bottom: 10, trailing: 7))
                  .foregroundColor(.black)
                  .background(Color(.white))
                  .cornerRadius(16)
                  .shadow(color: Color(hex: "48414D").opacity(0.2), radius: 16, x: 0, y: 0)
                Spacer()
              }.padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 9))
            }
          }.rotationEffect(.degrees(180))
        }.rotationEffect(.degrees(180))
          .background(Color.white)
          .frame(height: 634)
        
        ZStack {
          HStack {
            ZStack{
              TextField("", text: $messageText)
                .padding()
                .background(Color(.white))
                .cornerRadius(25.5)
                .frame(width: 358, alignment: .center)
                .onSubmit {
                  sendMessage(message: messageText)
                }
              if messageText.isEmpty {
                Text("메시지를 입력하세요")
                  .font(.custom("NotoSansKR-Regular", size: 16))
                  .foregroundColor(Color(hex: "9B9B9B"))
                  .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                  .frame(width: 358, alignment: .leading)
              }
              Button {
                sendMessage(message: messageText)
              } label: {
                Image("send")
              }
              .frame(alignment: .trailing)
              .padding(EdgeInsets(top: 0, leading: 308, bottom: 0, trailing: 10))
            }.padding(.top, 26)
          }
        }
        .navigationBarHidden(true)
        Spacer()
      }
    }.edgesIgnoringSafeArea(.bottom)          //.setTabBarVisibility(isHidden: true)
  }
  
  func sendMessage(message: String) {
    withAnimation {
      if message != "" {
        messages.append("[USER]" + message)
        self.messageText = ""
      }
    }
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
      withAnimation {
        if message != "" {
          messages.append(getBotResponse(message: message))
        }
      }
    }
  }
}

struct ChatBotView_Previews: PreviewProvider {
  static var previews: some View {
    ChatBotView()
  }
}
