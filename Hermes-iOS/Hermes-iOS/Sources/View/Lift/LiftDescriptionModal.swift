//
//  LiftDescriptionModal.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/24.
//

import SwiftUI

struct LiftDescriptionModal: View {
    
    
    let lift: row
    
    var body: some View {
        VStack {
            Text("리프트 위치")
                .font(.custom("NotoSansKR-Bold", size: 16))
                .foregroundColor(Color(hex: "#874DBC"))
                .frame(height: 58)
            Divider()
            List {
                HStack {
                    Text("역이름")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    
                    Text(lift.SW_NM)
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .padding(.trailing, 30)
                }
                HStack {
                    Text("시군구명")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    
                    Text(lift.SGG_NM)
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .padding(.trailing, 30)

                }
                HStack {
                    Text("읍면동명")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    
                    Text(lift.EMD_NM)
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .padding(.trailing, 30)
                }
            }
            .listStyle(.inset)
            .padding(.top, -8)
        }
        .frame(width: 390, height: 238)
        .background(.white)
        .cornerRadius(10)
        

    }
}

struct LiftDescriptionModal_Previews: PreviewProvider {
    
    static var previews: some View {
        LiftDescriptionModal(lift: LiftManager().lifts.first!)
            .environmentObject(LiftManager())
    }
}
