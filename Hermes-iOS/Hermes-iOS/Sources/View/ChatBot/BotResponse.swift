//
//  BotResponse.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/23.
//

import Foundation

func getBotResponse(message: String) -> String {
  let tempMessage = message.lowercased()
  
  if tempMessage.contains("안녕") {
    return "안녕 반가워!"
  } else if tempMessage.contains("잘가") {
    return "나중에 얘기하자"
  } else if tempMessage.contains("날씨 어때") {
    return "비가 하루 종일 와ㅜㅜ"
  } else {
    return "좋은 하루 보내"
  }
}
