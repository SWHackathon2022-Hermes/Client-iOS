//
//  TextBar.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/23.
//

import SwiftUI

struct TextBar: View {
    @State private var placeAddress: String = ""
    
    var body: some View {
        ZStack {
            TextField("장소 검색", text: $placeAddress)
                .background(.white)
                .frame(width: 340, height: 56.0)
                .zIndex(1)
            
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 0)
                .frame(width: 358, height: 56)
                .background(.white)
        }

    }
}

struct TextBar_Previews: PreviewProvider {
    static var previews: some View {
        TextBar()
            .previewLayout(.fixed(width: 358, height: 56))
    }
}
