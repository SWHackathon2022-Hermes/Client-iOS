//
//  ContentView.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/22.
//

import SwiftUI

struct ContentView: View {
  @State private var selection: Tab = .map
    @StateObject private var vm = LiftManager()
    @StateObject private var toiletVM = ToiletManager()
    @StateObject private var chargerVM = ChargerManager()
  
  enum Tab {
    case map
    case toilet
    case charger
    case lift
    case report
  }
  
  init() {
    UITabBar.appearance().backgroundColor = UIColor.white
  }
  
  var body: some View {
    TabView(selection: $selection) {
      MainView()
        .tabItem {
          Image("map").renderingMode(.template)
          Text("지도")
        }
        .tag(Tab.map)
      ToiletView()
            .environmentObject(toiletVM)
        .tabItem {
          Image("wc").renderingMode(.template)
          Text("화장실")
        }
        .tag(Tab.toilet)
      ChargerView()
            .environmentObject(chargerVM)
        .tabItem {
          Image("battery_charging_full").renderingMode(.template)
          Text("급속충전기")
        }
        .tag(Tab.charger)
      LiftView()
            .environmentObject(vm)
        .tabItem {
          Image("accessible").renderingMode(.template)
          Text("리프트 위치")
        }
        .tag(Tab.lift)
      BeforeReportView()
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
