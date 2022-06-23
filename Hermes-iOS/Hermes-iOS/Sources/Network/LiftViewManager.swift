//
//  LiftViewManager.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/23.
//

import Foundation

class LiftManager: ObservableObject {
    static let shared = LiftManager()
    
    @Published var lifts: [row] = []
    
    init() {
        updateLifts()
    }
    
    func updateLifts() {
        ServerAPI.loadLiftInfo { lift in
            self.lifts = lift
        }
    }
}

class liftViewModel{
    private let manager = LiftManager.shared
    
    // 리프트 리스트
    var lifts: [row] {
        return manager.lifts
    }
    
    func update() {
        manager.updateLifts()
    }
    // 좌표

    // 역 이름
    
    // 시군구 읍면동 합체 -> 상세 주소
}
