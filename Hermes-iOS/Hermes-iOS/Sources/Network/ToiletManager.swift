//
//  ToiletManager.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/24.
//

import Foundation

class ToiletManager: ObservableObject {
    
    @Published var toilets: [toiletModel] = [toiletModel(name: "남동인더스파크역", latitude: 37.407606, longitude: 126.695438, isGround: true, floor: 1, description: "맞이방1번출구방향"),
                                             toiletModel(name: "달월역", latitude: 37.380332, longitude: 126.745647, isGround: true, floor: 1, description: ""),
                                             toiletModel(name: "소래포구역", latitude: 37.400869, longitude: 126.733646, isGround: true, floor: 1, description: ""),
                                             toiletModel(name: "송도역", latitude: 37.429849, longitude: 126.654871, isGround: true, floor: 2, description: "맞이방 안쪽(게이트옆)"),
                                             toiletModel(name: "숭의(인하대병원)역", latitude: 37.460789, longitude: 126.638448, isGround: false, floor: 1, description: "1~6번 출구(역사 중앙)"),
                                             toiletModel(name: "신포역", latitude: 37.468389, longitude: 126.62464, isGround: true, floor: 1, description: "광장 우측"),
                                             toiletModel(name: "신포역", latitude: 37.468389, longitude: 126.62464, isGround: false, floor: 1, description: "역무실 앞"),
                                             toiletModel(name: "연수역", latitude: 37.417985, longitude: 126.678639, isGround: true, floor: 3, description: "2번출구방향"),
                                             toiletModel(name: "오이도역", latitude: 37.348002, longitude: 126.688899, isGround: true, floor: 2, description: "1,2번출구 우측 20M"),
                                             toiletModel(name: "원인재역", latitude: 37.412888, longitude: 126.686919, isGround: false, floor: 1, description: "맞이방 5번출구"),
                                             toiletModel(name: "월곶역", latitude: 37.391759, longitude: 126.742766, isGround: true, floor: 1, description: ""),
                                             toiletModel(name: "인천논현역", latitude: 37.400613, longitude: 126.72222, isGround: true, floor: 2, description: "고객지원실 맞은편(3,4번 출구방향)"),
                                             toiletModel(name: "인하대역", latitude: 37.448385, longitude: 126.649621, isGround: false, floor: 1, description: "3번출구 와 4번출구 사이(맞이방중앙)"),
                                             toiletModel(name: "호구포역", latitude: 37.401561, longitude: 126.708793, isGround: true, floor: 1, description: "고객지원실방향 왼쪽(1번출구)")
                                            ]

}
