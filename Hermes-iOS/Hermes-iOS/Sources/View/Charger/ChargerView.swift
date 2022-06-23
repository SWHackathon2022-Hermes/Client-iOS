//
//  ChargerView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct ChargerView: View {
    var body: some View {
        ChargerMapView()
    }
}

struct ChargerView_Previews: PreviewProvider {
    static var previews: some View {
        ChargerView()
            .environmentObject(ChargerManager())
    }
}
