//
//  ContentView.swift
//

import SwiftUI

struct ContentView: View {
  @State var isLoggedIn: Bool = false
  
  var body: some View {
    if isLoggedIn {
      TabView {
        TabViewView(title: "Store", tabIcon: "trash", isLoggedIn: $isLoggedIn)
        TabViewView(title: "New", tabIcon: "newspaper", isLoggedIn: $isLoggedIn)
        TabViewView(title: "Gallery", tabIcon: "photo", isLoggedIn: $isLoggedIn)
        TabViewView(title: "Discover", tabIcon: "magnifyingglass", isLoggedIn: $isLoggedIn)
        TabViewView(title: "Profile", tabIcon: "person", isLoggedIn: $isLoggedIn)
      }
    } else {
      LoginView {
        isLoggedIn = true
      }
    }
  }
}

struct TabViewView: View {
  let title: String
  let tabIcon: String
  @Binding var isLoggedIn: Bool
  
  var body: some View {
    NavigationStack {
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
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button("Logout") {
              isLoggedIn = false
            }
          }
        }
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

struct LoginView: View {
  let onLogin: () -> Void
  
  var body: some View {
    Button("Login", action: onLogin)
  }
}
