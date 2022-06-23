//
//  ModelData.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/23.
//

import Foundation
import CoreLocation

// MARK: Lift 관련 데이터
struct liftInfo: Codable {
    let tbTraficEntrcLft: tbTraficEntrcLft
    
}

struct tbTraficEntrcLft: Codable {
    let list_total_count: Int
    let row: [row]
    
}

struct row: Codable, Identifiable {
    let NODE_WKT: String
    let SW_NM: String
    let SGG_NM: String
    let EMD_NM: String
    
    var coordinate: CLLocationCoordinate2D {
        let startPoint = NODE_WKT.index(SW_NM.startIndex, offsetBy: 6)
        let endPoint = NODE_WKT.index(before: NODE_WKT.endIndex)
        let fullCoor = NODE_WKT[startPoint..<endPoint]


        let sepCoor = fullCoor.split(separator: " ")

        let latitude = (sepCoor[1] as NSString).doubleValue
        let longitude = (sepCoor[0] as NSString).doubleValue

        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var id: String {
        SW_NM + NODE_WKT
    }
}

// MARK: Toilet 관련 데이터
// 이름, 위도, 경도, 지상/지하, 층수, 상세위치
struct toiletModel: Identifiable {
    let name: String
    let latitude: Double
    let longitude: Double
    let isGround: Bool
    let floor: Int
    let description: String
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var id: String {
        name + "\(floor)"
    }
}

// MARK: Charger 관련 데이터
// 이름, 위도, 경도, 역번호, 상세위치, 수량
struct chargerModel: Identifiable {
    let id: Int
    let name: String
    let latitude: Double
    let longitude: Double
    let description: String
    let quantity: Int
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
