//
//  DescriptionModal.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/24.
//

import SwiftUI

struct DescriptionModal: View {
    
    let toilet: toiletModel
    
    var body: some View {
        VStack {
            Text("장애인 화장실 위치")
                .font(.custom("NotoSansKR-Bold", size: 16))
                .foregroundColor(Color(hex: "#874DBC"))
                .frame(height: 58)
            Divider()
            List {
                HStack {
                    Text("위치")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    
                    Text(toilet.name)
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .padding(.trailing, 30)
                }
                HStack {
                    Text("지상/지하 구분")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    
                    if toilet.isGround {
                        Text("지상")
                            .font(.custom("NotoSansKR-Regular", size: 16))
                            .padding(.trailing, 30)
                    } else {
                        Text("지하")
                            .font(.custom("NotoSansKR-Regular", size: 16))
                            .padding(.trailing, 30)
                    }

                }
                HStack {
                    Text("역층")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    
                    Text("\(toilet.floor)층")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .padding(.trailing, 30)
                }
                HStack {
                    Text("상세 위치")
                        .font(.custom("NotoSansKR-Regular", size: 16))
                        .foregroundColor(Color(hex: "#9B9B9B"))
                        .frame(width: 154, alignment: .leading)
                    if toilet.description == "" {
                        Text("상세 정보 없음.")
                            .font(.custom("NotoSansKR-Regular", size: 16))
                            .padding(.trailing, 30)
                    } else {
                        Text(toilet.description)
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

struct DescriptionModal_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionModal(toilet: ToiletManager().toilets.first!)
    }
}
