//
//  Ex+View.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import Foundation
import SwiftUI

extension View {
    
    /// 탭바 숨김 처리 여부
    /// - Parameter isHidden:
    /// - Returns:
  func setTabBarVisibility(isHidden : Bool) -> some View {
    background(TabBarAccessor { tabBar in
      // print(">> TabBar height: \(tabBar.bounds.height)")
      // !! use as needed, in calculations, @State, etc.
      // 혹은 높이를 변경한다던지 여러가지 설정들이 가능하다.
      tabBar.isHidden = isHidden
    })
  }
}

// MARK: - UITabBarController 에 TabBar를 가져오기 위한 TabBarAccessor
struct TabBarAccessor: UIViewControllerRepresentable {
  var callback: (UITabBar) -> Void
  private let proxyController = ViewController()
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<TabBarAccessor>) ->
  UIViewController {
    proxyController.callback = callback
    return proxyController
  }
  
  func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<TabBarAccessor>) {
  }
  
  func getHight() -> CGFloat {
    return proxyController.hight
  }
  
  typealias UIViewControllerType = UIViewController
  
  // viewWillAppear 가 탈때 가지고 있는 탭바를 클로저 콜백으로 넘김
  private class ViewController: UIViewController {
    var callback: (UITabBar) -> Void = { _ in }
    var hight: CGFloat = 0
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      if let tabBar = self.tabBarController {
        self.hight = tabBar.tabBar.bounds.height
        self.callback(tabBar.tabBar)
      }
    }
  }
}
