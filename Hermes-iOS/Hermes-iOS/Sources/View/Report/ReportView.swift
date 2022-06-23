//
//  ReportView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct ReportView: View {
  @State var showPopup: Bool = false
  @State var category: String = ""
  @State var address: String = ""
  @State var detailAddress: String = ""
  @State var text: String = ""
  
  var body: some View {
    ZStack {
        Color(hex: "EBEBEB").ignoresSafeArea()
          .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
        
        // MARK: - 커스텀 네비게이션바
        VStack(spacing: 0){
          CustomNavigationBar()
          //  .ignoresSafeArea()
            .frame(width: 390, height: 100-47, alignment: .center)
          LinearGradient(colors: [Color(hex: "EBEBEB"), Color(.sRGB, white: 0.75, opacity: 1)], startPoint: .bottom, endPoint: .top)
            .frame(height: 4)
            .opacity(1)
          
          Group {
            
            // MARK: - 카테고리
            HStack(spacing: 0){
              Text("카테고리")
                .font(.custom("NotoSansKR-Bold", size: 14))
                .frame(alignment: .leading)
                .padding(EdgeInsets(top: 18, leading: 16, bottom: 5, trailing: 0))
              Text(" *")
                .font(.custom("NotoSansKR-Bold", size: 14))
                .foregroundColor(Color(hex: "#FF6565"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 18, leading: 0, bottom: 5, trailing: 0))
              
            }
            ZStack{
              TextField("", text: $category)
                .customTextField(padding: 10)
                .frame(width: 358, height: 44, alignment: .center)
                .background(Color(.white))
                .cornerRadius(8)
              if category.isEmpty {
                Text("선택 안함")
                  .foregroundColor(Color(hex: "9B9B9B"))
                  .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                  .frame(width: 358, height: 44, alignment: .leading)
              }
              Button(action: {
                
              }) {
                Image("arrow_drop_down")
                  .renderingMode(.original)
                  .frame(width: 358, height: 40, alignment: .trailing)
              }
            }
            
            // MARK: - 주소
            HStack(spacing: 0){
              Text("주소")
                .font(.custom("NotoSansKR-Bold", size: 14))
                .frame(alignment: .leading)
                .padding(EdgeInsets(top: 15, leading: 16, bottom: 5, trailing: 0))
              Text(" *")
                .font(.custom("NotoSansKR-Bold", size: 14))
                .foregroundColor(Color(hex: "#FF6565"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 15, leading: 0, bottom: 5, trailing: 0))
            }
            ZStack{
              TextField("", text: $address)
                .customTextField(padding: 10)
                .frame(width: 358, height: 44, alignment: .center)
                .background(Color(.white))
                .cornerRadius(8)
              if address.isEmpty {
                Text("직접 입력")
                  .foregroundColor(Color(hex: "9B9B9B"))
                  .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                  .frame(width: 358, height: 44, alignment: .leading)
              }
              Button(action: {
                
              }) {
                Image("share_location")
                  .renderingMode(.original)
                  .frame(width: 358, height: 40, alignment: .trailing)
                  .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
              }
            }
            
            // MARK: - 상세 주소
            Text("상세 주소")
              .font(.custom("NotoSansKR-Bold", size: 14))
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(EdgeInsets(top: 15, leading: 16, bottom: 5, trailing: 0))
            TextField("", text: $detailAddress)
              .customTextField(padding: 10)
              .frame(width: 358, height: 44, alignment: .center)
              .background(Color(.white))
              .cornerRadius(8)
            
            // MARK: - 민원 내용
            Text("민원 내용")
              .font(.custom("NotoSansKR-Bold", size: 14))
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
            
            // MARK: - 첨부파일
            HStack(spacing: 0){
              Text("첨부파일")
                .font(.custom("NotoSansKR-Bold", size: 14))
                .frame(alignment: .leading)
                .padding(EdgeInsets(top: 15, leading: 16, bottom: 5, trailing: 0))
              Text(" *")
                .font(.custom("NotoSansKR-Bold", size: 14))
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
              Spacer()
            }
            .padding(.leading,16)
          }
          
          // MARK: - 등록하기
          Button(action: {
            withAnimation {
              self.showPopup.toggle()
            }
          }) {
            Image("register")
              .renderingMode(.original)
              .frame(width: 358, height: 50, alignment: .center)
              .padding(EdgeInsets(top: 45, leading: 0, bottom: 34, trailing: 0))
          }
        
      }
      if self.showPopup {
        GeometryReader{_ in
        VStack {
          ZStack{
            Rectangle()
              .foregroundColor(Color(.white))
              .frame(width: 358, height: 208, alignment: .center)
              .cornerRadius(16)
              .padding(.leading, 16)
              .padding(.trailing, 16)
            VStack(spacing: 0){
              Image("check_circle")
                .frame(width: 50, height: 50, alignment: .center)
              Text("민원이 성공적으로 등록되었습니다")
                .font(.custom("NotoSansKR-Regular", size: 16))
                .padding(EdgeInsets(top: 9, leading: 0, bottom: 0, trailing: 0))
              Button(action: {
                withAnimation {
                  self.showPopup.toggle()
                }
              }) {
                Image("okButton")
                  .renderingMode(.original)
                  .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
              }
            }
          }
          .padding()
          .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }.background(Color.black.opacity(0.5).edgesIgnoringSafeArea(.all))
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
