//
//  ChargerDescriptionModal.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/24.
//

import SwiftUI

struct ChargerDescriptionModal: View {
    
    let charger: chargerModel
    
    var body: some View {
        VStack {
            Text("전동휠체어 급속충전기 운영 정보")
                .font(.custom("NotoSansKR-Bold", size: 16))
                .foregroundColor(Color(hex: "#874DBC"))
                .frame(height: 58)
            Divider()
            List {
                HStack {
                    Text("호선")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    
                    Text("1호선")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .padding(.trailing, 30)
                }
                HStack {
                    Text("역명")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    
                    Text(charger.name)
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .padding(.trailing, 30)

                }
                HStack {
                    Text("운영수량")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    
                    Text("\(charger.quantity)")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .padding(.trailing, 30)
                }
                HStack {
                    Text("설치위치")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    if charger.description == "" {
                        Text("상세 정보 없음.")
                            .font(.custom("NotoSansKR-Regular", size: 16))
                            .padding(.trailing, 30)
                    } else {
                        Text(charger.description)
                            .font(.custom("NotoSansKR-Regular", size: 16))
                            .padding(.trailing, 30)
                    }

                }
            }
            .listStyle(.inset)
            .padding(.top, -8)
        }
        .frame(width: 390, height: 280)
        .background(.white)
        .cornerRadius(10)
        

    }
}

struct ChargerDescriptionModal_Previews: PreviewProvider {
    static var previews: some View {
        ChargerDescriptionModal(charger: ChargerManager().chargers.first!)
    }
}
