//
//  ToiletView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct ToiletView: View {
    
    var body: some View {
        ToiletMapView()
    }
}

struct ToiletView_Previews: PreviewProvider {
    static var previews: some View {
        ToiletView()
            .environmentObject(ToiletManager())
    }
}
