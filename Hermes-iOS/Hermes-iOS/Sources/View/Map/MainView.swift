//
//  MainView.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            TextBar()
                .zIndex(1)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay {
                    RoundedRectangle(cornerRadius: 8).stroke(.gray, lineWidth: 0)
                }
                .shadow(color: .secondary, radius: 3, x: 0, y: 3)
            MapView()
                .padding(.top, -130)
                
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
