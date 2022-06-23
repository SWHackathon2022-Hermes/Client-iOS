//
//  ReportImageView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/23.
//

import SwiftUI

struct ReportImageView: View {
    var body: some View {
      Image("NoImage")
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .frame(width: 80, height: 80, alignment: .center)
    }
}

struct ReportImageView_Previews: PreviewProvider {
    static var previews: some View {
        ReportImageView()
        .previewLayout(.fixed(width: 80, height: 80))
    }
}
