//
//  Ex+TabBar.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/23.
//

import Foundation
import UIKit

extension UITabBar {
  override open func sizeThatFits(_ size: CGSize) -> CGSize {
    var sizeThatFits = super.sizeThatFits(size)
    sizeThatFits.height = 110 // 원하는 길이
    super.awakeFromNib()
    layer.masksToBounds = true
    layer.cornerRadius = 16
    layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    return sizeThatFits
  }
}
