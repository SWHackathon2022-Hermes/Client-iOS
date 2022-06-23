//
//  ReportView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct ReportView: View {
  
  @State var detailAddress: String = ""
  @State var text: String = ""
  
  var body: some View {
    ZStack {
      Color(hex: "EBEBEB").ignoresSafeArea()
        .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
      
      VStack(spacing: 0){
        CustomNavigationBar()
          .frame(width: 390, height: 100, alignment: .center)
        
        Group {
          HStack(spacing: 0){
            Text("카테고리")
              .font(.custom("NotoSansKR-Bold", size: 14))
              .frame(alignment: .leading)
              .padding(EdgeInsets(top: 18, leading: 16, bottom: 5, trailing: 0))
            Text(" *")
              .font(.custom("NotoSansKR", size: 14))
              .foregroundColor(Color(hex: "#FF6565"))
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(EdgeInsets(top: 18, leading: 0, bottom: 5, trailing: 0))
          }
          Rectangle()
            .frame(width: 358, height: 44, alignment: .center)
            .cornerRadius(8)
            .foregroundColor(Color(.white))
          HStack(spacing: 0){
            Text("주소")
              .font(.custom("NotoSansKR-Bold", size: 14))
              .frame(alignment: .leading)
              .padding(EdgeInsets(top: 15, leading: 16, bottom: 5, trailing: 0))
            Text(" *")
              .font(.custom("NotoSansKR", size: 14))
              .foregroundColor(Color(hex: "#FF6565"))
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(EdgeInsets(top: 15, leading: 0, bottom: 5, trailing: 0))
          }
          ZStack{
            TextField("", text: $detailAddress)
              .customTextField(padding: 10)
              .frame(width: 358, height: 44, alignment: .center)
              .background(Color(.white))
              .cornerRadius(8)
            if detailAddress.isEmpty {
              Text("직접 입력")
                .foregroundColor(Color(hex: "9B9B9B"))
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                .frame(width: 358, height: 44, alignment: .leading)
            }
          }
          
          Text("상세 주소")
            .font(.custom("Noto Sans KR", size: 14))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 15, leading: 16, bottom: 5, trailing: 0))
          Rectangle()
            .frame(width: 358, height: 44, alignment: .center)
            .cornerRadius(8)
            .foregroundColor(Color(.white))
          
          Text("민원 내용")
            .font(.custom("Noto Sans KR-Bold", size: 14))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 15, leading: 16, bottom: 5, trailing: 0))
          ZStack {
            TextEditor(text: $text)
              .frame(width: 358, height: 188, alignment: .center)
              .background(Color(.white))
              .cornerRadius(8)
            if text.isEmpty {
              Text("자세한 민원 내용을 작성해주세요")
                .foregroundColor(Color(hex: "9B9B9B"))
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
                .frame(width: 358, height: 188, alignment: .topLeading)
            }
          }
          HStack(spacing: 0){
            Text("첨부파일")
              .font(.custom("NotoSansKR", size: 14))
              .frame(alignment: .leading)
              .padding(EdgeInsets(top: 15, leading: 16, bottom: 5, trailing: 0))
            Text(" *")
              .font(.custom("NotoSansKR", size: 14))
              .foregroundColor(Color(hex: "#FF6565"))
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(EdgeInsets(top: 15, leading: 0, bottom: 5, trailing: 0))
          }
        }
        VStack(alignment: .leading) {
          HStack(spacing: 20) {
            ReportImageView()
            ReportImageView()
            ReportImageView()
            
          }
          
          Button(action: {
            
          }) {
            Image("register")
              .renderingMode(.original)
              .frame(width: 358, height: 50, alignment: .center)
              .padding(EdgeInsets(top: 45, leading: 0, bottom: 34, trailing: 0))
          }
        }
      }
    }
  }
}

struct ReportView_Previews: PreviewProvider {
  static var previews: some View {
    ReportView()
  }
}
