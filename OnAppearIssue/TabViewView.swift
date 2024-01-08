//
//  TabViewView.swift
//

import SwiftUI

struct TabViewView: View {
  let title: String
  let tabIcon: String
//  @Binding var isLoggedIn: Bool
  
  var body: some View {
//    NavigationStack {
    VStack {
      Text(title)
        .navigationBarTitle(title)
        .task {
          print("🏋️ \(title) some task")
        }
        .onAppear {
          print("👋 \(title) onAppear")
        }
        .onDisappear {
          print("😶‍🌫️ \(title) onDisappear")
        }
//        .toolbar {
//          ToolbarItem(placement: .navigationBarTrailing) {
//            Button("Logout") {
//              isLoggedIn = false
//            }
//          }
//        }
    }
    .task {
      print("🏋️ \(title) NavigationStack some task")
    }
    .onAppear {
      print("👋 \(title) NavigationStack onAppear")
    }
    .onDisappear {
      print("😶‍🌫️ \(title) NavigationStack onDisappear")
    }
    .tabItem {
      Image(systemName: tabIcon)
      Text(title)
    }
  }
}
