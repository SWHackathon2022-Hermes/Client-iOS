//
//  Network.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import Foundation

class ServerAPI {
    static let successRange = 200..<300
    
    // URL Request 생성
    static func makeURLRequest(APIAddress: String) -> URLRequest {
        let requestURL = URLRequest(url: URL(string: APIAddress)!)
        
        return requestURL
    }
    
    static func parseLiftData(data: Data) -> [row] {
        let decoder = JSONDecoder()

        do {
            let response = try decoder.decode(liftInfo.self, from: data)
            let row = response.tbTraficEntrcLft.row
            return row
        } catch let error {
            print("parsing error : \(error)")
            return []
        }
    }
    
    // MARK: 서울시 지하철역 리프트 위치 정보 API
    static func loadLiftInfo(completion: @escaping ([row]) -> Void){
        let session = URLSession(configuration: .default)
        let requestURL = makeURLRequest(APIAddress: "http://openapi.seoul.go.kr:8088/6e554666536a736b34375569767344/json/tbTraficEntrcLft/1/100/")
        
        let dataTask = session.dataTask(with: requestURL) { data, response, error in
            guard error == nil,
                  let statusCode = (response as? HTTPURLResponse)?.statusCode,
                  successRange.contains(statusCode)
            else { return }
            
            
            guard let resultData = data else {
                return
            }
            
            let lifts = parseLiftData(data: resultData)
            completion(lifts)
        }
        
        dataTask.resume()

    }
}
