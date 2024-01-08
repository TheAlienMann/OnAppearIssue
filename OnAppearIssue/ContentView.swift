//
//  ContentView.swift
//

import SwiftUI

struct ContentView: View {
  @State var isLoggedIn: Bool = false
  
  var body: some View {
    NavigationStack {
      LoginView {
        isLoggedIn = true
      }
    }
//    if isLoggedIn {
//      TabView {
//        TabViewView(title: "Store", tabIcon: "trash", isLoggedIn: $isLoggedIn)
//        TabViewView(title: "New", tabIcon: "newspaper", isLoggedIn: $isLoggedIn)
//        TabViewView(title: "Gallery", tabIcon: "photo", isLoggedIn: $isLoggedIn)
//        TabViewView(title: "Discover", tabIcon: "magnifyingglass", isLoggedIn: $isLoggedIn)
//        TabViewView(title: "Profile", tabIcon: "person", isLoggedIn: $isLoggedIn)
//      }
//    } else {

//    NavigationView {
//      LoginView()
//    }
  }
}
