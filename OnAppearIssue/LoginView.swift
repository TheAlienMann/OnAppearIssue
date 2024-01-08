//
//  LoginView.swift
//

import SwiftUI

struct LoginView: View {
  let onLogin: () -> Void
  @State var isLoggedIn: Bool = false
  
  var body: some View {
    NavigationLink(destination: TabViewCollections()) {
      Text("Login")
    }
    .simultaneousGesture(TapGesture().onEnded({
      onLogin()
    }))
    //    Button("Login", action: onLogin)
  }
}

struct TabViewCollections: View {
//  @Binding var isLoggedIn: Bool
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
      TabView {
        TabViewView(title: "Store", tabIcon: "trash")
        TabViewView(title: "New", tabIcon: "newspaper")
        TabViewView(title: "Gallery", tabIcon: "photo")
        TabViewView(title: "Discover", tabIcon: "magnifyingglass")
        TabViewView(title: "Profile", tabIcon: "person")
      }
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button("Logout") {
//            isLoggedIn = false
            dismiss()
            print(#line, #file.components(separatedBy: "/").last!, "Logging Out...")
          }
        }
      }
  }
}
