//
//  ChargerManager.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/24.
//

import Foundation

class ChargerManager: ObservableObject {
    
    @Published var chargers: [chargerModel] = [chargerModel(id: 152, name: "종각역", latitude: 37.570187, longitude: 126.983463, description: "3, 4번 출구쪽 게이트 방면 45m 지점", quantity: 1),
                                               chargerModel(id: 153, name: "종로3가역(1호선)", latitude: 37.57044, longitude: 126.992248, description: "12번 출구로 내려와서 20m 지점", quantity: 1),
                                               chargerModel(id: 157, name: "제기동역", latitude: 37.578172, longitude: 127.035847, description: "1번 출구 개찰구 앞 5m 지점", quantity: 1),
                                               chargerModel(id: 159, name: "동묘앞역(1호선)", latitude: 37.573204, longitude: 127.016312, description: "B1층 상선 승강장 2-2 지점", quantity: 1),
                                               chargerModel(id: 205, name: "동대문역사문화공원역(2호선)", latitude: 37.565752, longitude: 127.008726, description: "2번출구 하부 비상출입문 옆", quantity: 1),
                                               chargerModel(id: 207, name: "상왕십리역", latitude: 37.564475, longitude: 127.029017, description: "지하1층 대합실 중앙", quantity: 1),
                                               chargerModel(id: 209, name: "한양대역", latitude: 37.555848, longitude: 127.043663, description: "2번출구", quantity: 1),
                                               chargerModel(id: 210, name: "뚝섬역", latitude: 37.547168, longitude: 127.047603, description: "대합실 3번출구 E/V옆", quantity: 1),
                                               chargerModel(id: 211, name: "성수역", latitude: 37.544638, longitude: 127.055829, description: "가대합실 해피박스옆", quantity: 1),
                                               chargerModel(id: 212, name: "건대입구역(2호선)", latitude: 37.540359, longitude: 127.069425, description: "대합실 위생자판기 옆", quantity: 1),
                                               chargerModel(id: 433, name: "사당역(4호선)", latitude: 37.476545, longitude: 126.981728, description: "9번 출입구에서 지하1층으로 내려온 직진 우측 100M", quantity: 1),
                                               chargerModel(id: 2534, name: "광화문역", latitude: 37.569701, longitude: 126.976241, description: "B1층 1,8번 출구방향 계단 밑 10m 지점", quantity: 1)
                                            ]

}
