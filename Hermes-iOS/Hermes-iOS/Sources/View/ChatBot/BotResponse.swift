//
//  BotResponse.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/23.
//

import Foundation

// 서버 연결 전 임시 시연 데이터 (구현된 챗봇에서 가져옴)
func getBotResponse(message: String) -> String {
  let tempMessage = message.lowercased()
  
  if tempMessage.contains("안녕") {
    return "안녕 반가워!"
  } else if tempMessage.contains("잘가") {
    return "그래 나중에 얘기하자!"
  } else if tempMessage.contains("이름") {
    return "나는 민원상담 챗봇이야"
  } else if tempMessage.contains("파손") {
    return "전화번호 : 02-120(02-731-2120) \n국제 : 82-2-731-2120"
  } else if tempMessage.contains("143번") {
    return "전화번호 : 02-941-3453"
  } else if tempMessage.contains("잘가") {
    return "나중에 얘기하자"
  } else if tempMessage.contains("날씨 어때") {
    return "비가 하루 종일 오네!"
  } else {
    return "좋은 하루 보내ㅎㅎ"
  }
}
