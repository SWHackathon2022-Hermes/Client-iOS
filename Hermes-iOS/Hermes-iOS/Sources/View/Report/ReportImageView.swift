//
//  ReportImageView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/23.
//

import SwiftUI

struct ReportImageView: View {
  
  @State private var showingImagePicker = false
  @State var pickedImage = UIImage(named: "NoImage")!
  @State var isShowDefault = true
  
  var body: some View {
    VStack {
      Button(action: {
        self.showingImagePicker.toggle()
      }, label: {
        Image(uiImage: self.pickedImage)
          .resizable()
          .clipShape(RoundedRectangle(cornerRadius: 8))
          .frame(width: 80, height: 80, alignment: .center)
      }).sheet(isPresented: $showingImagePicker) {
        SUImagePicker(selectedImage: self.$pickedImage, sourceType: .photoLibrary)
      }
    }
  }
}

struct ReportImageView_Previews: PreviewProvider {
  static var previews: some View {
    ReportImageView()
      .previewLayout(.fixed(width: 80, height: 80))
  }
}
