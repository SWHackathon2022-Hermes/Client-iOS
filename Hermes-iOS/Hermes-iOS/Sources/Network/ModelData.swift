//
//  ModelData.swift
//  Hermes-iOS
//
//  Created by 정승균 on 2022/06/23.
//

import Foundation
import CoreLocation

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
    let EMD_CD: String
    
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


