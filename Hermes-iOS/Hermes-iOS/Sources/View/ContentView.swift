//
//  ContentView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct ContentView: View {
  @State private var selection: Tab = .map
  
  enum Tab {
    case map
    case toilet
    case charger
    case lift
    case report
  }
  
  var body: some View {
    TabView(selection: $selection) {
      MapView()
        .tabItem {
          Image("map").renderingMode(.template)
          Text("지도")
          
        }
        .tag(Tab.map)
      ToiletView()
        .tabItem {
          Image("wc").renderingMode(.template)
          Text("화장실")
        }
        .tag(Tab.toilet)
      ChargerView()
        .tabItem {
          Image("battery_charging_full").renderingMode(.template)
          Text("급속충전기")
        }
        .tag(Tab.charger)
      LiftView()
        .tabItem {
          Image("accessible").renderingMode(.template)
          Text("리프트 위치")
        }
        .tag(Tab.lift)
      ReportView()
        .tabItem {
          Image("campaign").renderingMode(.template)
          Text("민원 등록")
        }
        .tag(Tab.report)
    }
    .accentColor(Color(hex: "874DBC"))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
